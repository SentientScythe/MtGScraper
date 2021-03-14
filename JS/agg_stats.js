/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

// Invoke SQL
const { Client } = require('pg');
const client = new Client({
	user: 'postgres',
	database: 'mtg'
});
// Invoke SQL

const ProgressBar = require('progress');

// for each category: find all possibilities and make them columns, then fill each table
let aggregateStats = async () => {
	await client.connect();

	for (const stat of ['layouts', 'cmcs', 'colors', 'supertypes', 'types', 'powers', 'toughnesses']) {
		await client.query('TRUNCATE TABLE mtg.' + stat + ';');
		const response = await client.query(
			'SELECT tds.deck_url, ' +
				stat +
				' stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE unknown_cards_main = FALSE;'
		);
		const responseRows = response.rows;
		const bar = new ProgressBar(stat + ' progress [:bar] :current/:total :percent :etas', {
			total: responseRows.length
		});

		// Gather keys for headers
		const keys = new Set();

		for (const responseRow of responseRows) {
			for (const stat of responseRow.stats) {
				keys.add(stat[0]);
			}
		}

		const columns = [...keys];
		columns.unshift('deck_url');
		var insertStats = 'INSERT INTO mtg.' + stat + ' ("' + columns.join('", "') + '") VALUES (';

		for (var i = 1; i <= columns.length; i++) {
			insertStats += 1 === i ? '$' + i : ', $' + i;
		}

		insertStats += ');';

		// Insert stats
		for (const responseRow of responseRows) {
			var entry = [responseRow.deck_url];

			for (const key of keys.keys()) {
				var statValue = null;

				for (const stat of responseRow.stats) {
					if (key === stat[0]) {
						statValue = stat[1];
						break;
					}
				}

				entry.push(statValue ? statValue : 0);
			}

			await client.query(insertStats, entry);
			bar.tick();
		}
	}

	await client.release();
};

aggregateStats();
