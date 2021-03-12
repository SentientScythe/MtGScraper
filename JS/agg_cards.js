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

const spaceReplace = / /g;
const sReplace = /%s/g;
const updateCount = 'UPDATE mtg.card_stats SET count_%s = count_%s + $1 WHERE name = $2';
const updateAll = updateCount.replace(sReplace, 'all');
const update1 = updateCount.replace(sReplace, '1');

let aggregateCardStats = async () => {
	const client = await pool.connect();
	await client.query(
		'UPDATE mtg.card_stats SET count_all = 0, count_1 = 0, count_legacy = 0, count_modern = 0, count_standard = 0, count_vintage = 0'
	);
	const decks = await client.query(
		"SELECT cards, format, rank FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE date > '30-09-2010' AND unknown_cards_main = FALSE"
	);
	client.release();

	for (const deck of decks.rows) {
		const rankFirst = '1' === deck.rank;
		const updateFormat = updateCount.replace(sReplace, deck.format.toLowerCase().replace(spaceReplace, '_'));

		for (const card of deck.cards) {
			const groups = /(SB:\s+)?(\d*)\s*(\[\w*\])?\s*(.+)/.exec(card);
			const sideboard = groups[1];
			const numberOfCards = Number(groups[2]);
			const cardName = groups[4];
			const cardNames = cardName.includes('/') ? cardName.split(' / ') : null;
			const client = await pool.connect();

			if (cardNames) {
				const cardData1 = [numberOfCards, cardNames[0]];
				const cardData2 = [numberOfCards, cardNames[1]];
				await client.query(updateAll, cardData1);
				await client.query(updateAll, cardData2);

				if (rankFirst) {
					await client.query(update1, cardData1);
					await client.query(update1, cardData2);
				}

				await client.query(updateFormat, cardData1);
				await client.query(updateFormat, cardData2);
			} else {
				const cardData = [numberOfCards, cardName];
				await client.query(updateAll, cardData);

				if (rankFirst) {
					await client.query(update1, cardData);
				}

				await client.query(updateFormat, cardData);
			}

			client.release();
		}
	}

	process.exit();
};

aggregateCardStats();
