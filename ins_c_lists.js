const Promise = require('bluebird');
const fs = require('fs');
const puppeteer = require('puppeteer');
const {
	Client
} = require('pg');
const client = new Client({
		user: 'postgres',
		database: 'mtg'
	});
// const {
// Pool
// } = require('pg');
// const pool = new Pool({
// user: 'postgres',
// database: 'mtg'
// });

Promise.longStackTraces();

let insert_card_lists = async() => {
	await client.connect();
	const fileList = await fs.readdirSync('./done');
	const temp_filepath = './done/current.mwDeck';
	const temp_table_sql = 'CREATE TEMP TABLE mwdeck_import(line text)';
	await client.query(temp_table_sql);
	const staging_sql = 'TRUNCATE TABLE mwdeck_import; COPY mwdeck_import FROM \'C:\\Users\\SentientScythe\\MtGTop8Scraper\\done\\current.mwDeck\'; SELECT * FROM(SELECT REPLACE((TABLE mwdeck_import LIMIT 1 OFFSET 1)::text, \'// NAME : \', \'\') AS name, REPLACE((TABLE mwdeck_import LIMIT 1 OFFSET 2)::text, \'// CREATOR : \', \'\') player, REPLACE((TABLE mwdeck_import LIMIT 1 OFFSET 3)::text, \'// FORMAT : \', \'\') format, ARRAY(TABLE mwdeck_import OFFSET 4) cards) AS mwdeck;';
	const insert_sql = 'INSERT INTO mtg.mwdecks(filename, name, creator, format, cards) VALUES($1, $2, $3, $4, $5)';

	for (const file of fileList) {
		const original_filepath = './done/' + file;
		await fs.copyFile(original_filepath, temp_filepath, function () {});

		try {
			const res = await client.query(staging_sql);
			const values = [file, res[2].rows[0]["name"], res[2].rows[0]["player"], res[2].rows[0]["format"], res[2].rows[0]["cards"]];
			await client.query(insert_sql, values);
		} catch (e) {
			await console.log(e.stack);
		}
	}

	await client.end();
	exit;
}

let insert_mwdeck_names = async() => {
	const browser = await puppeteer.launch({
			headless: false
		});
	var page = await browser.newPage();

	await client.connect();
	const fileList = await fs.readdirSync('./done');
	const select_sql = 'SELECT deck_url FROM mtg.tournament_decks';
	const update_sql = 'UPDATE mtg.tournament_decks SET mwdeck_name = $1 WHERE deck_url = $2';
	const regex = /https:\/\/mtgtop8.com\/dec\?d=.*?&f=(.*)/;
	const res = await client.query(select_sql);

	for (const row of res.rows) {
		var groups = null;

		do {
			try {
				await page.goto(row['deck_url']);
				await page.waitForSelector('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)');
				result = await page.evaluate(function () {
						const button = document.querySelector('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)');
						return button.href;
					});
				groups = await regex.exec(result);
			} catch (e) {
				await page.close();
				page = await browser.newPage();
			}
		} while (groups == null);

		const filename = groups[1] + '.mwDeck';
		await client.query(update_sql, [filename, row['deck_url']]);
	}

	await client.end();
	exit;
}

let calc_deck_stats = async() => {
	await client.connect();

	const select_decks = 'SELECT deck_url FROM mtg.tournament_decks WHERE cards <> ARRAY[]::text[]';
	const decks = await client.query(select_decks);

	const select_cards = 'SELECT UNNEST(cards) FROM mtg.tournament_decks WHERE deck_url = $1';
	const card_regex = /(SB:\s+){0,1}(\d*)\s*(\[\w*\]){0,1}\s*(.+)/;
	const select_card_data = 'SELECT * FROM mtg.cards WHERE name = $1';
	const insert_deck_stats = 'INSERT INTO mtg.deck_stats (deck_url, main, sideboard, layouts, mana_costs, cmcs, colors, supertypes, types, subtypes, powers, toughnesses) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)';

	for (const deck of decks.rows) {
		const deck_url = deck.deck_url;
		const cards_response = await client.query(select_cards, [deck_url]);
		var cards = cards_response.rows.map(r => r.unnest);
		var stats = new Map([
					['main', 0],
					['sideboard', 0],
					['layouts', new Map()],
					['mana_costs', new Map()],
					['cmcs', new Map()],
					['colors', new Map()],
					['supertypes', new Map()],
					['types', new Map()],
					['subtypes', new Map()],
					['powers', new Map()],
					['toughnesses', new Map()]
				]);

		for (const card of cards) {
			const groups = await card_regex.exec(card);
			const sideboard = groups[1];
			const number_of_cards = Number(groups[2]);
			var card_name = groups[4];
			var card_data;
			var split_card_data;
			var split_card = card_name.includes('/');

			if (split_card) {
				const card_names = card_name.split(' / ');
				var merged_card_data = {};
				card_data = await client.query(select_card_data, [card_names[0]]);
				split_card_data = await client.query(select_card_data, [card_names[1]]);
			} else {
				card_data = await client.query(select_card_data, [card_name]);
			}

			if (!card_data.rows[0]) {
				continue;
			}

			if (!sideboard) {
				// Main
				const main_stat = stats.get('main') + number_of_cards;
				stats.set('main', main_stat);

				// Layouts
				const layout = card_data.rows[0]['layout'];
				var layouts = stats.get('layouts');
				const layout_stat = layouts.get(layout);
				var new_layout_stat;

				if (!layout_stat) {
					new_layout_stat = number_of_cards;
				} else {
					new_layout_stat = layout_stat + number_of_cards;
				}

				layouts.set(layout, new_layout_stat);

				// Mana Costs
				const mana_cost = card_data.rows[0]['mana_cost'];
				var mana_costs = stats.get('mana_costs');
				const mana_cost_stat = mana_costs.get(mana_cost);
				var new_mana_cost_stat;

				if (!mana_cost_stat) {
					new_mana_cost_stat = number_of_cards;
				} else {
					new_mana_cost_stat = mana_cost_stat + number_of_cards;
				}

				mana_costs.set(mana_cost, new_mana_cost_stat);

				if (split_card) {
					const mana_cost = split_card_data.rows[0]['mana_cost'];
					var mana_costs = stats.get('mana_costs');
					const mana_cost_stat = mana_costs.get(mana_cost);
					var new_mana_cost_stat;

					if (!mana_cost_stat) {
						new_mana_cost_stat = number_of_cards;
					} else {
						new_mana_cost_stat = mana_cost_stat + number_of_cards;
					}

					mana_costs.set(mana_cost, new_mana_cost_stat);
				}

				// CMCs
				const cmc = card_data.rows[0]['cmc'];
				var cmcs = stats.get('cmcs');
				const cmc_stat = cmcs.get(cmc);
				var new_cmc_stat;

				if (!cmc_stat) {
					new_cmc_stat = number_of_cards;
				} else {
					new_cmc_stat = cmc_stat + number_of_cards;
				}

				cmcs.set(cmc, new_cmc_stat);

				if (split_card) {
					const cmc = split_card_data.rows[0]['cmc'];
					var cmcs = stats.get('cmcs');
					const cmc_stat = cmcs.get(cmc);
					var new_cmc_stat;

					if (!cmc_stat) {
						new_cmc_stat = number_of_cards;
					} else {
						new_cmc_stat = cmc_stat + number_of_cards;
					}

					cmcs.set(cmc, new_cmc_stat);
				}

				// Colors
				const colors = card_data.rows[0]['colors'];

				if (colors) {
					var deck_colors = stats.get('colors');

					for (const color of colors) {
						const color_stat = deck_colors.get(color);
						var new_color_stat;

						if (!color_stat) {
							new_color_stat = number_of_cards;
						} else {
							new_color_stat = color_stat + number_of_cards;
						}

						deck_colors.set(color, new_color_stat);
					}
				}

				if (split_card) {
					const colors = split_card_data.rows[0]['colors'];

					if (colors) {
						var deck_colors = stats.get('colors');

						for (const color of colors) {
							const color_stat = deck_colors.get(color);
							var new_color_stat;

							if (!color_stat) {
								new_color_stat = number_of_cards;
							} else {
								new_color_stat = color_stat + number_of_cards;
							}

							deck_colors.set(color, new_color_stat);
						}
					}
				}

				// Supertypes
				const supertypes = card_data.rows[0]['supertypes'];

				if (supertypes) {
					var deck_supertypes = stats.get('supertypes');

					for (const supertype of supertypes) {
						const supertype_stat = deck_supertypes.get(supertype);
						var new_supertype_stat;

						if (!supertype_stat) {
							new_supertype_stat = number_of_cards;
						} else {
							new_supertype_stat = supertype_stat + number_of_cards;
						}

						deck_supertypes.set(supertype, new_supertype_stat);
					}
				}

				if (split_card) {
					const supertypes = split_card_data.rows[0]['supertypes'];

					if (supertypes) {
						var deck_supertypes = stats.get('supertypes');

						for (const supertype of supertypes) {
							const supertype_stat = deck_supertypes.get(supertype);
							var new_supertype_stat;

							if (!supertype_stat) {
								new_supertype_stat = number_of_cards;
							} else {
								new_supertype_stat = supertype_stat + number_of_cards;
							}

							deck_supertypes.set(supertype, new_supertype_stat);
						}
					}
				}

				// Types
				const types = card_data.rows[0]['types'];
				var deck_types = stats.get('types');

				for (const type of types) {
					const type_stat = deck_types.get(type);
					var new_type_stat;

					if (!type_stat) {
						new_type_stat = number_of_cards;
					} else {
						new_type_stat = type_stat + number_of_cards;
					}

					deck_types.set(type, new_type_stat);
				}

				if (split_card) {
					const types = split_card_data.rows[0]['types'];
					var deck_types = stats.get('types');

					for (const type of types) {
						const type_stat = deck_types.get(type);
						var new_type_stat;

						if (!type_stat) {
							new_type_stat = number_of_cards;
						} else {
							new_type_stat = type_stat + number_of_cards;
						}

						deck_types.set(type, new_type_stat);
					}
				}

				// Subtypes
				const subtypes = card_data.rows[0]['subtypes'];

				if (subtypes) {
					var deck_subtypes = stats.get('subtypes');

					for (const subtype of subtypes) {
						const subtype_stat = deck_subtypes.get(subtype);
						var new_subtype_stat;

						if (!subtype_stat) {
							new_subtype_stat = number_of_cards;
						} else {
							new_subtype_stat = subtype_stat + number_of_cards;
						}

						deck_subtypes.set(subtype, new_subtype_stat);
					}
				}

				if (split_card) {
					const subtypes = split_card_data.rows[0]['subtypes'];

					if (subtypes) {
						var deck_subtypes = stats.get('subtypes');

						for (const subtype of subtypes) {
							const subtype_stat = deck_subtypes.get(subtype);
							var new_subtype_stat;

							if (!subtype_stat) {
								new_subtype_stat = number_of_cards;
							} else {
								new_subtype_stat = subtype_stat + number_of_cards;
							}

							deck_subtypes.set(subtype, new_subtype_stat);
						}
					}
				}

				// Powers
				const power = card_data.rows[0]['power'];
				var powers = stats.get('powers');
				const power_stat = powers.get(power);
				var new_power_stat;

				if (!power_stat) {
					new_power_stat = number_of_cards;
				} else {
					new_power_stat = power_stat + number_of_cards;
				}

				powers.set(power, new_power_stat);

				if (split_card) {
					const power = split_card_data.rows[0]['power'];
					var powers = stats.get('powers');
					const power_stat = powers.get(power);
					var new_power_stat;

					if (!power_stat) {
						new_power_stat = number_of_cards;
					} else {
						new_power_stat = power_stat + number_of_cards;
					}

					powers.set(power, new_power_stat);
				}

				// Toughnesses
				const toughness = card_data.rows[0]['toughness'];
				var toughnesses = stats.get('toughnesses');
				const toughness_stat = toughnesses.get(toughness);
				var new_toughness_stat;

				if (!toughness_stat) {
					new_toughness_stat = number_of_cards;
				} else {
					new_toughness_stat = toughness_stat + number_of_cards;
				}

				toughnesses.set(toughness, new_toughness_stat);

				if (split_card) {
					const toughness = split_card_data.rows[0]['toughness'];
					var toughnesses = stats.get('toughnesses');
					const toughness_stat = toughnesses.get(toughness);
					var new_toughness_stat;

					if (!toughness_stat) {
						new_toughness_stat = number_of_cards;
					} else {
						new_toughness_stat = toughness_stat + number_of_cards;
					}

					toughnesses.set(toughness, new_toughness_stat);
				}
			} else {
				// Sideboard
				const sideboard_stat = stats.get('sideboard') + number_of_cards;
				stats.set('sideboard', sideboard_stat);
			}
		}

		await client.query(insert_deck_stats, [deck_url, stats.get('main'), stats.get('sideboard'), mapToJson(stats.get('layouts')), mapToJson(stats.get('mana_costs')), mapToJson(stats.get('cmcs')), mapToJson(stats.get('colors')), mapToJson(stats.get('supertypes')), mapToJson(stats.get('types')), mapToJson(stats.get('subtypes')), mapToJson(stats.get('powers')), mapToJson(stats.get('toughnesses'))]);
	}

	await client.end();
	process.exit();
}

function mapToJson(map) {
	return JSON.stringify([...map]);
}

function jsonToMap(jsonStr) {
	return new Map(JSON.parse(jsonStr));
}

//insert_card_lists();

//insert_mwdeck_names();

calc_deck_stats();
