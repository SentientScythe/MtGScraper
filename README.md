# MtG Scraper

My "private" repository for messing with Magic the Gathering card and deck data.

GENERAL STEPS
1. Run scraper.js to gather deck data from mtgtop8
2. Import the info into the tournament_decks table
3. Run the populate_format.sql script
4. Run culm.js to download any missing cards for decks
5. Run the set_unknown_card_flags.sql script
6. Run calc_deck_stats.js
7. 
