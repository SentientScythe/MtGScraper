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

const commonStats = ['colors', 'converted_mana_cost', 'mana_cost', 'power', 'subtypes', 'supertypes', 'toughness', 'types'];
const selectCardData = 'SELECT * FROM mtg2.cards WHERE name = $1';

let incrementDeck = async (numberOfCards, stat, stats) => {
	stats.set(stat, stats.get(stat) + numberOfCards);
};

let insertStatValue = async (cardData, numberOfCards, splitCard, splitCardData, stat, stats) => {
	const cardStat = cardData.rows[0][stat];
	const statMap = stats.get(stat);
	var currentStat = statMap.get(cardStat);
	statMap.set(cardStat, !currentStat ? numberOfCards : currentStat + numberOfCards);

	if (splitCard) {
		const splitCardStat = splitCardData.rows[0][stat];
		currentStat = statMap.get(splitCardStat);
		statMap.set(splitCardStat, !currentStat ? numberOfCards : currentStat + numberOfCards);
	}
};

let calcDeckStats = async () => {
	await client.connect();
	await cardClient.connect();
	const decks = await client.query(
		"SELECT deck_url FROM mtg.tournament_decks WHERE cards <> '{}' AND cards IS NOT NULL AND unknown_cards_main = FALSE"
	);
	await client.query('TRUNCATE TABLE mtg.deck_stats');

	for (const deck of decks.rows) {
		const deckUrl = deck.deck_url;
		const cardsResponse = await client.query('SELECT UNNEST(cards) FROM mtg.tournament_decks WHERE deck_url = $1', [
			deckUrl
		]);
		var stats = new Map([
			['main', 0],
			['sideboard', 0],
			['layout', new Map()],
			['colors', new Map()],
			['converted_mana_cost', new Map()],
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
				await insertStatValue(cardData, numberOfCards, false, splitCardData, 'layout', stats);

				for (const stat of commonStats) {
					await insertStatValue(cardData, numberOfCards, splitCard, splitCardData, stat, stats);
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
			'INSERT INTO mtg.deck_stats (deck_url, main, sideboard, layouts, colors, cmcs, mana_costs, powers, subtypes, supertypes, toughnesses, types) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)',
			finalData
		);
	}

	await client.end();
	await cardClient.end();
	process.exit();
};

function mapToJson(map) {
	return JSON.stringify([...map]);
}

calcDeckStats();
