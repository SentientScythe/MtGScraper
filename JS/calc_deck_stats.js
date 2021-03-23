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

const ProgressBar = require('progress');

const commonStats = [
	'colors',
	'converted_mana_cost',
	'keywords',
	'mana_cost',
	'power',
	'subtypes',
	'supertypes',
	'toughness',
	'types'
];
const selectCardData = 'SELECT * FROM cards WHERE name = $1;';

function incrementDeck(numberOfCards, stat, stats) {
	stats.set(stat, stats.get(stat) + numberOfCards);
}

function insertStatValue(cardData, numberOfCards, splitCard, splitCardData, stat, stats) {
	const cardStat = cardData.rows[0][stat];
	const statMap = stats.get(stat);
	var currentStat = statMap.get(cardStat);
	statMap.set(cardStat, !currentStat ? numberOfCards : currentStat + numberOfCards);

	if (splitCard) {
		const splitCardStat = splitCardData.rows[0][stat];
		currentStat = statMap.get(splitCardStat);
		statMap.set(splitCardStat, !currentStat ? numberOfCards : currentStat + numberOfCards);
	}
}

let calcDeckStats = async () => {
	await client.connect();
	await cardClient.connect();
	const decks = await client.query(
		"SELECT deck_url FROM tournament_decks WHERE cards <> '{}' AND cards IS NOT NULL AND unknown_cards_main = FALSE AND NOT EXISTS (SELECT 1 FROM deck_stats WHERE deck_stats.deck_url = tournament_decks.deck_url);"
	);
	const rows = decks.rows;
	const bar = new ProgressBar('Progress [:bar] :current/:total :percent :etas', {
		total: rows.length
	});

	for (const deck of rows) {
		const deckUrl = deck.deck_url;
		const cardsResponse = await client.query('SELECT UNNEST(cards) FROM tournament_decks WHERE deck_url = $1;', [deckUrl]);
		var stats = new Map([
			['main', 0],
			['sideboard', 0],
			['layout', new Map()],
			['colors', new Map()],
			['converted_mana_cost', new Map()],
			['keywords', new Map()],
			['mana_cost', new Map()],
			['power', new Map()],
			['subtypes', new Map()],
			['supertypes', new Map()],
			['toughness', new Map()],
			['types', new Map()]
		]);

		for (const card of cardsResponse.rows.map((r) => r.unnest)) {
			const groups = /(SB:\s+)?(\d*)\s*(\[\w*\])?\s*(.+)/.exec(card);
			const numberOfCards = Number(groups[2]);
			var cardName = groups[4];
			var cardData;
			var splitCardData;
			var splitCard = cardName.includes('/');

			if (splitCard) {
				const cardNames = cardName.split(' / ');
				cardData = await cardClient.query(selectCardData, [cardNames[0]]);
				splitCardData = await cardClient.query(selectCardData, [cardNames[1]]);
			} else {
				cardData = await cardClient.query(selectCardData, [cardName]);
			}

			if (!cardData.rows[0]) {
				continue;
			}

			if (!groups[1]) {
				// Main
				incrementDeck(numberOfCards, 'main', stats);
				insertStatValue(cardData, numberOfCards, false, splitCardData, 'layout', stats);

				for (const stat of commonStats) {
					insertStatValue(cardData, numberOfCards, splitCard, splitCardData, stat, stats);
				}
			} else {
				// Sideboard
				incrementDeck(numberOfCards, 'sideboard', stats);
			}
		}

		var finalData = [deckUrl, stats.get('main'), stats.get('sideboard'), mapToJson(stats.get('layout'))];

		for (const stat of commonStats) {
			finalData.push(mapToJson(stats.get(stat)));
		}

		await client.query(
			'INSERT INTO deck_stats (deck_url, main, sideboard, layouts, colors, cmcs, keywords, mana_costs, powers, subtypes, supertypes, toughnesses, types) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13) ON CONFLICT (deck_url) DO UPDATE SET main = $2, sideboard = $3, layouts = $4, colors = $5, cmcs = $6, keywords = $7, mana_costs = $8, powers = $9, subtypes = $10, supertypes = $11, toughnesses = $12, types = $13;',
			finalData
		);
		bar.tick();
	}

	await client.end();
	await cardClient.end();
	process.exit();
};

function mapToJson(map) {
	return JSON.stringify([...map]);
}

calcDeckStats();
