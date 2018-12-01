// layouts
const select_layouts = 'SELECT tds.deck_url, layouts stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// mana_costs
const select_mana_costs = 'SELECT tds.deck_url, mana_costs stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// cmcs
const select_cmcs = 'SELECT tds.deck_url, cmcs stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// colors
const select_colors = 'SELECT tds.deck_url, colors stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// supertypes
const select_supertypes = 'SELECT tds.deck_url, supertypes stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// types
const select_types = 'SELECT tds.deck_url, types stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// subtypes
const select_subtypes = 'SELECT tds.deck_url, subtypes stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// powers
const select_powers = 'SELECT tds.deck_url, powers stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

// toughnesses
const select_toughnesses = 'SELECT tds.deck_url, toughnesses stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE main = 60 AND unknown_cards_main = FALSE';

const Promise = require('bluebird');
Promise.longStackTraces();

const {
	Pool
} = require('pg');
const pool = new Pool({
		user: 'postgres',
		database: 'mtg'
	});

// for each category: find all possibilities and make them columns, then fill each table
let agg_stats = async() => {
	const path = 'StatCSVs/'; 
	await do_the_work(path + 'layouts.csv', select_layouts);
	await do_the_work(path + 'mana_costs.csv', select_mana_costs);
	await do_the_work(path + 'cmcs.csv', select_cmcs);
	await do_the_work(path + 'colors.csv', select_colors);
	await do_the_work(path + 'supertypes.csv', select_supertypes);
	await do_the_work(path + 'types.csv', select_types);
	await do_the_work(path + 'subtypes.csv', select_subtypes);
	await do_the_work(path + 'powers.csv', select_powers);
	await do_the_work(path + 'toughnesses.csv', select_toughnesses);
}

let do_the_work = async(filename, query) => {
	const log4js = await require('log4js');
	await log4js.configure({
		appenders: {
			out: {
				type: 'file',
				filename: filename,
				layout: {
					type: 'messagePassThrough'
				}
			}
		},
		categories: {
		default: {
				appenders: ['out'],
				level: 'info'
			}
		}
	});
	const log = await log4js.getLogger('out');
	// Setup

	// SQL
	const client = await pool.connect();

	const response = await client.query(query);
	const response_rows = response.rows;

	await client.release();
	// SQL

	// Gather keys for headers
	const keys = new Set();
	for (const response_row of response_rows) {
		for (const stat of response_row.stats) {
			const key = stat[0];
			keys.add(key);
		}
	}

	// Print headers
	const headers = Array.from(keys.values()).join('\t');
	await log.info('deck_url\t' + headers);

	// Print stats
	for (const response_row of response_rows) {
		var entry = response_row.deck_url;

		for (const key of keys.values()) {
			var stat_value = null;

			for (const stat of response_row.stats) {
				if (key == stat[0]) {
					stat_value = stat[1];
					break;
				}
			}

			if (stat_value) {
				entry += '\t' + stat_value;
			} else {
				entry += '\t0';
			}
		}

		await log.info(entry);
	}
}

agg_stats();
