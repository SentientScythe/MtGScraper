// setup
const Promise = require('bluebird');
Promise.longStackTraces();

const {
	Pool
} = require('pg');
const pool = new Pool({
		user: 'postgres',
		database: 'mtg'
	});

// open connection
const client = await pool.connect();

// truncate 6 columns in cards
const wipe_columns = '';
await client.query(wipe_columns);

// get list of decks
const select_decks = 'SELECT cards, format, rank FROM mtg.tournament_decks WHERE unknown_cards_main = FALSE';
const deck_urls = await client.query(select_decks);

// close connection
await client.release();

// for each deck of decks
	// open connection
	// fetch deck.cards
	// close connection

	// for each card of deck.cards
		// open connection
		// accumulate number
		
		// if deck ranks 1
			// accumulate rank 1 number

		// case deck.format: legacy, vintage, modern, standard
			// accumulate format numbers

		// close connection
// exit
