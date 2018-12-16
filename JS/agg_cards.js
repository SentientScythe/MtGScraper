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

	const wipe_columns = 'UPDATE mtg.cards SET count_all = 0, count_1 = 0, count_legacy = 0, count_modern = 0, count_standard = 0, count_vintage = 0';
	await client.query(wipe_columns);

	const select_decks = "SELECT cards, format, rank FROM mtg.tournament_decks WHERE format IN ('legacy', 'modern', 'standard', 'vintage') AND main = 60 AND unknown_cards_main = FALSE";
	const select_decks_response = await client.query(select_decks);

	await client.release();

	for (deck of select_decks_response.rows) {
		for (card of deck.cards) {
			const client = await pool.connect();

			// accumulate number
			const count_all = 'UPDATE mtg.cards SET count_all = count_all + $1 WHERE name = $2';

			// if deck ranks 1
				// accumulate rank 1 number
				const count_1 = 'UPDATE mtg.cards SET count_1 = count_1 + $1 WHERE name = $2';

			// case deck.format: legacy, vintage, modern, standard
				// accumulate format numbers
			{	const count_legacy = 'UPDATE mtg.cards SET count_legacy = count_legacy + $1 WHERE name = $2';
				const count_modern = 'UPDATE mtg.cards SET count_modern = count_modern + $1 WHERE name = $2';
				const count_standard = 'UPDATE mtg.cards SET count_standard = count_standard + $1 WHERE name = $2';
				const count_vintage = 'UPDATE mtg.cards SET count_vintage = count_vintage + $1 WHERE name = $2';
			}
			await client.release();
		}
	}

	process.exit();
}

agg_cards();
