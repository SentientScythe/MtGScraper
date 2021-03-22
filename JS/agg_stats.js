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
		{ delimit: '', lowercase: false, name: 'cmcs' },
		{ delimit: ',', lowercase: false, name: 'colors' },
		{ delimit: ',', lowercase: true, name: 'keywords' },
		{ delimit: '', lowercase: false, name: 'layouts' },
		{ delimit: '}{', lowercase: false, name: 'mana_costs' },
		{ delimit: '', lowercase: false, name: 'powers' },
		{ delimit: ',', lowercase: true, name: 'subtypes' },
		{ delimit: ',', lowercase: true, name: 'supertypes' },
		{ delimit: '', lowercase: false, name: 'toughnesses' },
		{ delimit: ',', lowercase: true, name: 'types' }
	]) {
		const delimit = stat.delimit;
		const curlyDelimit = '}{' === delimit;
		const name = stat.name;
		const lowercase = stat.lowercase;
		await client.query('TRUNCATE TABLE mtg.' + name + ';');
		const response = await client.query(
			'SELECT tds.deck_url, ' +
				name +
				' deck_stats FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE unknown_cards_main = FALSE;'
		);
		const rows = response.rows;
		const bar = new ProgressBar(name + ' progress [:bar] :current/:total :percent :etas', {
			total: rows.length
		});

		// Gather keys for headers
		const keys = new Set();

		for (const row of rows) {
			const deckStats = row.deck_stats;

			if (deckStats && typeof deckStats[Symbol.iterator] === 'function') {
				for (const deckStat of deckStats) {
					const deckStatKey = deckStat[0];

					if (deckStatKey !== null && deckStatKey !== undefined) {
						if (delimit) {
							const deckStatKeys = curlyDelimit ? deckStatKey.substring(1, deckStatKey.length - 1) : deckStatKey;

							for (const key of deckStatKeys.split(delimit)) {
								if (lowercase) {
									keys.add(key.toLowerCase());
								} else {
									keys.add(key);
								}
							}
						} else {
							keys.add(deckStatKey);
						}
					}
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
				const deckStats = row.deck_stats;

				if (deckStats && typeof deckStats[Symbol.iterator] === 'function') {
					for (const deckStat of deckStats) {
						const deckStatKeyRaw = deckStat[0];

						if (deckStatKeyRaw !== null && deckStatKeyRaw !== undefined) {
							if (delimit) {
								const deckStatKeys =
									'}{' === delimit ? deckStatKeyRaw.substring(1, deckStatKeyRaw.length - 1) : deckStatKeyRaw;

								for (const deckStatKey of deckStatKeys.split(delimit)) {
									if (lowercase) {
										if (key === deckStatKey.toLowerCase()) {
											statValue = deckStat[1];
											break;
										}
									} else {
										if (key === deckStatKey) {
											statValue = deckStat[1];
											break;
										}
									}
								}
							} else {
								if (key === deckStatKeyRaw) {
									statValue = deckStat[1];
									break;
								}
							}
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
