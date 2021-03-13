/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

// Invoke SQL
const { Pool } = require('pg');
const pool = new Pool({
	user: 'postgres',
	database: 'mtg'
});
// Invoke SQL

// Invoke Log 4 JS
const log4js = require('log4js');
// Invoke Log 4 JS

// for each category: find all possibilities and make them columns, then fill each table
let aggregateStats = async () => {
	const stats = ['layouts', 'mana_costs', 'cmcs', 'colors', 'supertypes', 'types', 'subtypes', 'powers', 'toughnesses'];
	for (const stat of stats) {
		await doTheWork(
			stat + '.tsv',
			'SELECT tds.deck_url, %s stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE unknown_cards_main = FALSE'.replace(
				/%s/g,
				stat
			)
		);
	}
};

let doTheWork = async (filename, query) => {
	log4js.configure({
		appenders: { out: { type: 'file', filename: 'StatTSVs/' + filename, layout: { type: 'messagePassThrough' } } },
		categories: { default: { appenders: ['out'], level: 'info' } }
	});
	const log = log4js.getLogger('out');
	// Setup

	// SQL
	const client = await pool.connect();
	const response = await client.query(query);
	const response_rows = response.rows;
	client.release();
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
	log.info('deck_url\t' + headers);

	// Print stats
	for (const response_row of response_rows) {
		var entry = response_row.deck_url;

		for (const key of keys.values()) {
			var stat_value = null;

			for (const stat of response_row.stats) {
				if (key === stat[0]) {
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

		log.info(entry);
	}
};

aggregateStats();
