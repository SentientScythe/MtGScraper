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

	for (const stat of [
		{ delimit: '', name: 'cmcs' },
		{ delimit: ',', name: 'colors' },
		{ delimit: ',', name: 'keywords' },
		{ delimit: '', name: 'layouts' },
		{ delimit: '}{', name: 'mana_costs' },
		{ delimit: '', name: 'powers' },
		{ delimit: ',', name: 'supertypes' },
		{ delimit: '', name: 'toughnesses' },
		{ delimit: ',', name: 'types' }
	]) {
		const delimit = stat.delimit;
		const name = stat.name;
		await client.query('TRUNCATE TABLE mtg.' + name + ';');
		const response = await client.query(
			'SELECT tds.deck_url, ' +
				name +
				' deck_stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE unknown_cards_main = FALSE;'
		);
		const rows = response.rows;
		const bar = new ProgressBar(stat + ' progress [:bar] :current/:total :percent :etas', {
			total: rows.length
		});

		// Gather keys for headers
		const keys = new Set();

		for (const row of rows) {
			for (const deckStat of row.deck_stats) {
				const deckStatKey = deckStat[0];

				if (delimit) {
					const deckStatKeys = '}{' === delimit ? deckStatKey.substring(1, deckStatKey.length - 1) : deckStatKey;

					for (const key of deckStatKeys.split(delimit)) {
						keys.add(key);
					}
				} else {
					keys.add(deckStatKey);
				}
			}
		}

		// Dynamically create the SQL query from the keys
		const columns = [...keys];
		columns.unshift('deck_url');
		var insertStats = 'INSERT INTO mtg.' + name + ' ("' + columns.join('", "') + '") VALUES (';

		for (var i = 1; i <= columns.length; i++) {
			insertStats += 1 === i ? '$' + i : ', $' + i;
		}

		insertStats += ');';

		// Insert stats
		for (const row of rows) {
			var data = [row.deck_url];

			for (const key of keys.keys()) {
				var statValue = null;

				for (const deckStat of row.deck_stats) {
					const deckStatKeyRaw = deckStat[0];

					if (delimit) {
						const deckStatKeys =
							'}{' === delimit ? deckStatKeyRaw.substring(1, deckStatKeyRaw.length - 1) : deckStatKeyRaw;

						for (const deckStatKey of deckStatKeys.split(delimit)) {
							if (key === deckStatKey) {
								statValue = deckStat[1];
								break;
							}
						}
					} else {
						if (key === deckStatKeyRaw) {
							statValue = deckStat[1];
							break;
						}
					}
				}

				data.push(statValue ? statValue : 0);
			}

			await client.query(insertStats, data);
			bar.tick();
		}
	}

	await client.end();
};

aggregateStats();
