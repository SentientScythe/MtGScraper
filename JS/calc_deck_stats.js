/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

// Invoke SQL
const { Client } = require('pg');
const client = new Client({
	user: 'postgres',
	database: 'mtg'
});
const cardClient = new Client({
	user: 'postgres',
	database: 'mtg2'
});
// Invoke SQL

let calc_deck_stats = async () => {
	await client.connect();
	await cardClient.connect();

	const select_decks =
		"SELECT deck_url FROM mtg.tournament_decks WHERE cards <> '{}' AND cards IS NOT NULL AND unknown_cards_main = FALSE";
	const decks = await client.query(select_decks);

	const select_cards = 'SELECT UNNEST(cards) FROM mtg.tournament_decks WHERE deck_url = $1';
	const card_regex = /(SB:\s+)?(\d*)\s*(\[\w*\])?\s*(.+)/;
	const select_card_data = 'SELECT * FROM mtg2.cards WHERE name = $1';
	const truncate_deck_stats = 'TRUNCATE TABLE mtg.deck_stats';
	const insert_deck_stats =
		'INSERT INTO mtg.deck_stats (deck_url, main, sideboard, layouts, mana_costs, cmcs, colors, supertypes, types, subtypes, powers, toughnesses) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)';
	await client.query(truncate_deck_stats);

	for (const deck of decks.rows) {
		const deck_url = deck.deck_url;
		const cards_response = await client.query(select_cards, [deck_url]);
		var cards = cards_response.rows.map((r) => r.unnest);
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
			const groups = card_regex.exec(card);
			const sideboard = groups[1];
			const number_of_cards = Number(groups[2]);
			var card_name = groups[4];
			var card_data;
			var split_card_data;
			var split_card = card_name.includes('/');

			if (split_card) {
				const card_names = card_name.split(' / ');
				card_data = await cardClient.query(select_card_data, [card_names[0]]);
				split_card_data = await cardClient.query(select_card_data, [card_names[1]]);
			} else {
				card_data = await cardClient.query(select_card_data, [card_name]);
			}

			if (!card_data.rows[0]) {
				continue;
			}

			if (!sideboard) {
				// Main
				const main_stat = stats.get('main') + number_of_cards;
				stats.set('main', main_stat);

				// Layouts
				const layout = card_data.rows[0].layout;
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
				const mana_cost = card_data.rows[0].mana_cost;
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
					const mana_cost = split_card_data.rows[0].mana_cost;
					mana_costs = stats.get('mana_costs');
					const mana_cost_stat = mana_costs.get(mana_cost);

					if (!mana_cost_stat) {
						new_mana_cost_stat = number_of_cards;
					} else {
						new_mana_cost_stat = mana_cost_stat + number_of_cards;
					}

					mana_costs.set(mana_cost, new_mana_cost_stat);
				}

				// CMCs
				const cmc = card_data.rows[0].cmc;
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
					const cmc = split_card_data.rows[0].cmc;
					cmcs = stats.get('cmcs');
					const cmc_stat = cmcs.get(cmc);

					if (!cmc_stat) {
						new_cmc_stat = number_of_cards;
					} else {
						new_cmc_stat = cmc_stat + number_of_cards;
					}

					cmcs.set(cmc, new_cmc_stat);
				}

				// Colors
				const colors = card_data.rows[0].colors;
				var deck_colors = stats.get('colors');

				if (colors) {
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
					const colors = split_card_data.rows[0].colors;

					if (colors) {
						for (const color of colors) {
							const color_stat = splitDeckColors.get(color);
							var newSplitColorStat;

							if (!color_stat) {
								newSplitColorStat = number_of_cards;
							} else {
								newSplitColorStat = color_stat + number_of_cards;
							}

							splitDeckColors.set(color, newSplitColorStat);
						}
					}
				}

				// Supertypes
				const supertypes = card_data.rows[0].supertypes;
				var deck_supertypes = stats.get('supertypes');

				if (supertypes) {
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
					const supertypes = split_card_data.rows[0].supertypes;

					if (supertypes) {
						for (const supertype of supertypes) {
							const supertype_stat = deck_supertypes.get(supertype);
							var newSplitSupertypeStat;

							if (!supertype_stat) {
								newSplitSupertypeStat = number_of_cards;
							} else {
								newSplitSupertypeStat = supertype_stat + number_of_cards;
							}

							deck_supertypes.set(supertype, newSplitSupertypeStat);
						}
					}
				}

				// Types
				const types = card_data.rows[0].types;
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
					const types = split_card_data.rows[0].types;

					for (const type of types) {
						const type_stat = deck_types.get(type);
						var newSplitTypeStat;

						if (!type_stat) {
							newSplitTypeStat = number_of_cards;
						} else {
							newSplitTypeStat = type_stat + number_of_cards;
						}

						deck_types.set(type, newSplitTypeStat);
					}
				}

				// Subtypes
				const subtypes = card_data.rows[0].subtypes;
				var deck_subtypes = stats.get('subtypes');

				if (subtypes) {
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
					const subtypes = split_card_data.rows[0].subtypes;

					if (subtypes) {
						for (const subtype of subtypes) {
							const subtype_stat = deck_subtypes.get(subtype);
							var newSplitSubtypeStat;

							if (!subtype_stat) {
								newSplitSubtypeStat = number_of_cards;
							} else {
								newSplitSubtypeStat = subtype_stat + number_of_cards;
							}

							deck_subtypes.set(subtype, newSplitSubtypeStat);
						}
					}
				}

				// Powers
				const power = card_data.rows[0].power;
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
					const power = split_card_data.rows[0].power;
					const power_stat = powers.get(power);
					var newSplitPowerStat;

					if (!power_stat) {
						newSplitPowerStat = number_of_cards;
					} else {
						newSplitPowerStat = power_stat + number_of_cards;
					}

					powers.set(power, newSplitPowerStat);
				}

				// Toughnesses
				const toughness = card_data.rows[0].toughness;
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
					const toughness = split_card_data.rows[0].toughness;
					const toughness_stat = toughnesses.get(toughness);
					var newSplitToughnessStat;

					if (!toughness_stat) {
						newSplitToughnessStat = number_of_cards;
					} else {
						newSplitToughnessStat = toughness_stat + number_of_cards;
					}

					toughnesses.set(toughness, newSplitToughnessStat);
				}
			} else {
				// Sideboard
				const sideboard_stat = stats.get('sideboard') + number_of_cards;
				stats.set('sideboard', sideboard_stat);
			}
		}

		await client.query(insert_deck_stats, [
			deck_url,
			stats.get('main'),
			stats.get('sideboard'),
			mapToJson(stats.get('layouts')),
			mapToJson(stats.get('mana_costs')),
			mapToJson(stats.get('cmcs')),
			mapToJson(stats.get('colors')),
			mapToJson(stats.get('supertypes')),
			mapToJson(stats.get('types')),
			mapToJson(stats.get('subtypes')),
			mapToJson(stats.get('powers')),
			mapToJson(stats.get('toughnesses'))
		]);
	}

	await client.end();
	process.exit();
};

function mapToJson(map) {
	return JSON.stringify([...map]);
}

function jsonToMap(jsonStr) {
	return new Map(JSON.parse(jsonStr));
}

calc_deck_stats();
