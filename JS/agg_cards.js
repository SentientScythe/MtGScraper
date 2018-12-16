const Promise = require('bluebird');
Promise.longStackTraces();

const {
	Pool
} = require('pg');
const pool = new Pool({
		user: 'postgres',
		database: 'mtg'
	});

let agg_cards = async() => {
	const wipe_columns = 'UPDATE mtg.card_stats SET count_all = 0, count_1 = 0, count_legacy = 0, count_modern = 0, count_standard = 0, count_vintage = 0';
	const select_decks = "SELECT cards, format, rank FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE date > '30-09-2010' AND format IN ('Legacy', 'Modern', 'Standard', 'Vintage') AND main = 60 AND unknown_cards_main = FALSE";

	const client = await pool.connect();
	await client.query(wipe_columns);
	const select_decks_response = await client.query(select_decks);
	await client.release();

	const card_regex = /(SB:\s+)?(\d*)\s*(\[\w*\])?\s*(.+)/;
	const count_all = 'UPDATE mtg.card_stats SET count_all = count_all + $1 WHERE name = $2';
	const count_1 = 'UPDATE mtg.card_stats SET count_1 = count_1 + $1 WHERE name = $2';
	const count_legacy = 'UPDATE mtg.card_stats SET count_legacy = count_legacy + $1 WHERE name = $2';
	const count_modern = 'UPDATE mtg.card_stats SET count_modern = count_modern + $1 WHERE name = $2';
	const count_standard = 'UPDATE mtg.card_stats SET count_standard = count_standard + $1 WHERE name = $2';
	const count_vintage = 'UPDATE mtg.card_stats SET count_vintage = count_vintage + $1 WHERE name = $2';

	for (deck of select_decks_response.rows) {
		for (card of deck.cards) {
			const groups = await card_regex.exec(card);
			const sideboard = groups[1];
			const number_of_cards = Number(groups[2]);
			const card_name = groups[4];
			const card_names = card_name.includes('/') ? card_name.split(' / ') : null;

			const client = await pool.connect();
			if (card_names) {
				await client.query(count_all, [number_of_cards, card_names[0]]);
				await client.query(count_all, [number_of_cards, card_names[1]]);

				if (deck.rank == '1') {
					await client.query(count_1, [number_of_cards, card_names[0]]);
					await client.query(count_1, [number_of_cards, card_names[1]]);
				}

				switch (deck.format) {
				case 'Legacy':
					await client.query(count_legacy, [number_of_cards, card_names[0]]);
					await client.query(count_legacy, [number_of_cards, card_names[1]]);
					break;

				case 'Modern':
					await client.query(count_modern, [number_of_cards, card_names[0]]);
					await client.query(count_modern, [number_of_cards, card_names[1]]);
					break;

				case 'Standard':
					await client.query(count_standard, [number_of_cards, card_names[0]]);
					await client.query(count_standard, [number_of_cards, card_names[1]]);
					break;

				case 'Vintage':
					await client.query(count_vintage, [number_of_cards, card_names[0]]);
					await client.query(count_vintage, [number_of_cards, card_names[1]]);
				}
			} else {
				await client.query(count_all, [number_of_cards, card_name]);

				if (deck.rank == '1') {
					await client.query(count_1, [number_of_cards, card_name]);
				}

				switch (deck.format) {
				case 'Legacy':
					await client.query(count_legacy, [number_of_cards, card_name]);
					break;

				case 'Modern':
					await client.query(count_modern, [number_of_cards, card_name]);
					break;

				case 'Standard':
					await client.query(count_standard, [number_of_cards, card_name]);
					break;

				case 'Vintage':
					await client.query(count_vintage, [number_of_cards, card_name]);
				}
			}

			await client.release();
		}
	}

	process.exit();
}

agg_cards();
