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
	const client = await pool.connect();

	const wipe_columns = 'UPDATE mtg.cards SET count_all = NULL, count_1 = NULL, count_legacy = NULL, count_vintage = NULL, count_modern = NULL, count_standard = NULL';
	await client.query(wipe_columns);

	const select_decks = 'SELECT cards, format, rank FROM mtg.tournament_decks WHERE unknown_cards_main = FALSE';
	const select_decks_response = await client.query(select_decks);

	await client.release();

	for (deck of select_decks_response.rows) {
		for (card of deck.cards) {
			const client = await pool.connect();

			// accumulate number

			// if deck ranks 1
				// accumulate rank 1 number

			// case deck.format: legacy, vintage, modern, standard
				// accumulate format numbers

			await client.release();
		}
	}

	process.exit();
}

agg_cards();
