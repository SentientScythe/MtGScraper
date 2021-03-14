/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

// Invoke SQL
const { Client } = require('pg');
const cardClient = new Client({
	user: 'postgres',
	database: 'mtg2'
});
const deckClient = new Client({
	user: 'postgres',
	database: 'mtg'
});
// Invoke SQL

const ProgressBar = require('progress');

const spaceReplace = / /g;
const sReplace = /%s/g;
const updateCount = 'UPDATE mtg2.card_stats SET count_%s = count_%s + $1 WHERE name = $2';
const updateAll = updateCount.replace(sReplace, 'all');
const update1 = updateCount.replace(sReplace, '1');

let aggregateCardStats = async () => {
	await cardClient.connect();
	await deckClient.connect();
	await cardClient.query(
		'UPDATE mtg2.card_stats SET count_all = 0, count_1 = 0, count_legacy = 0, count_modern = 0, count_standard = 0, count_vintage = 0, count_block = 0, count_canadian_highlander = 0, count_edh_online = 0, count_edh_peasant = 0, count_elder_dragon_highlander = 0, count_extended = 0, count_highlander = 0, count_historic = 0, count_limited = 0, count_pauper = 0, count_peasant = 0, count_pioneer = 0'
	);
	const decks = await deckClient.query(
		"SELECT cards, format, rank FROM mtg.tournament_decks WHERE date > '30-09-2010' AND unknown_cards_main = FALSE"
	);
	await deckClient.release();
	const rows = decks.rows;
	const bar = new ProgressBar('Progress [:bar] :current/:total :percent :etas', {
		total: rows.length
	});

	for (const deck of decks.rows) {
		const rankFirst = '1' === deck.rank;
		const updateFormat = updateCount.replace(sReplace, deck.format.toLowerCase().replace(spaceReplace, '_'));

		for (const card of deck.cards) {
			const groups = /(SB:\s+)?(\d*)\s*(\[\w*\])?\s*(.+)/.exec(card);
			const sideboard = groups[1];
			const numberOfCards = Number(groups[2]);
			const cardName = groups[4];
			const cardNames = cardName.includes('/') ? cardName.split(' / ') : null;

			if (cardNames) {
				const cardData1 = [numberOfCards, cardNames[0]];
				const cardData2 = [numberOfCards, cardNames[1]];
				await cardClient.query(updateAll, cardData1);
				await cardClient.query(updateAll, cardData2);

				if (rankFirst) {
					await cardClient.query(update1, cardData1);
					await cardClient.query(update1, cardData2);
				}

				await cardClient.query(updateFormat, cardData1);
				await cardClient.query(updateFormat, cardData2);
			} else {
				const cardData = [numberOfCards, cardName];
				await cardClient.query(updateAll, cardData);

				if (rankFirst) {
					await cardClient.query(update1, cardData);
				}

				await cardClient.query(updateFormat, cardData);
			}
		}

		bar.tick();
	}

	await cardClient.release();
	process.exit();
};

aggregateCardStats();
