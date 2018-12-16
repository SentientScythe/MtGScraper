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

	const wipe_columns = 'UPDATE mtg.card_stats SET count_all = 0, count_1 = 0, count_legacy = 0, count_modern = 0, count_standard = 0, count_vintage = 0';
	await client.query(wipe_columns);

	const select_decks = "SELECT cards, format, rank FROM mtg.tournament_decks tds LEFT JOIN mtg.deck_stats ds ON tds.deck_url = ds.deck_url WHERE date > '30-09-2010' AND format IN ('Legacy', 'Modern', 'Standard', 'Vintage') AND main = 60 AND unknown_cards_main = FALSE";
	const select_decks_response = await client.query(select_decks);

	await client.release();

	const card_regex = /(SB:\s+)?(\d*)\s*(\[\w*\])?\s*(.+)/;
	const select_card_data = 'SELECT * FROM mtg.cards WHERE name = $1';

	for (deck of select_decks_response.rows) {
		for (card of deck.cards) {
			const client = await pool.connect();

			const groups = await card_regex.exec(card);
			const sideboard = groups[1];
			const number_of_cards = Number(groups[2]);
			var card_name = groups[4];
			var card_data;
			var split_card_data;
			var split_card = card_name.includes('/');

			// accumulate number
			if (split_card) {
				const card_names = card_name.split(' / ');
				var merged_card_data = {};
				card_data = await client.query(select_card_data, [card_names[0]]);
				split_card_data = await client.query(select_card_data, [card_names[1]]);
			} else {
				card_data = await client.query(select_card_data, [card_name]);
			}

			if (!card_data.rows[0]) {
				continue;
			}

			const count_all = 'UPDATE mtg.card_stats SET count_all = count_all + $1 WHERE name = $2';
			await client.query(count_all, [deck_url, name]);

			if (deck.rank == '1') {
				const count_1 = 'UPDATE mtg.card_stats SET count_1 = count_1 + $1 WHERE name = $2';
				await client.query(count_1, [deck_url, name]);
			}

			switch (deck.format) {
			case 'Legacy':
				const count_legacy = 'UPDATE mtg.card_stats SET count_legacy = count_legacy + $1 WHERE name = $2';
				await client.query(count_legacy, [deck_url, name]);
				break;

			case 'Modern':
				const count_modern = 'UPDATE mtg.card_stats SET count_modern = count_modern + $1 WHERE name = $2';
				await client.query(count_modern, [deck_url, name]);
				break;

			case 'Standard':
				const count_standard = 'UPDATE mtg.card_stats SET count_standard = count_standard + $1 WHERE name = $2';
				await client.query(count_standard, [deck_url, name]);
				break;

			case 'Vintage':
				const count_vintage = 'UPDATE mtg.card_stats SET count_vintage = count_vintage + $1 WHERE name = $2';
				await client.query(count_vintage, [deck_url, name]);
			}
			await client.release();
		}
	}

	process.exit();
}

agg_cards();
