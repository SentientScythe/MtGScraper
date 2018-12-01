UPDATE mtg.tournament_decks
SET unknown_cards_sb = FALSE, unknown_cards_main = FALSE

UPDATE mtg.tournament_decks
SET unknown_cards_sb = TRUE
WHERE array_to_string(cards, '') LIKE '%SB%Unknown Card%'

UPDATE mtg.tournament_decks
SET unknown_cards_main = TRUE
WHERE array_to_string(cards, '') NOT LIKE '%SB%Unknown Card%' AND array_to_string(cards, '') LIKE '%Unknown Card%'