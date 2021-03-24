SELECT 'SELECT ''' || regexp_replace(column_name, '''', '''''') || ''' property, MIN("' || column_name || '"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "' || column_name || '") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "' || column_name || '") median, MODE() WITHIN GROUP (
ORDER BY "' || column_name || '"), AVG("' || column_name || '"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "' || column_name || '") Q3, MAX("' || column_name || '")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "' || table_name || '" ON
deck_stats.deck_url = "' || table_name || '".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = ''1'' AND "format" IN (''Elder Dragon Highlander'', ''EDH Online'', ''EDH Peasant'')
UNION' "statement"
FROM information_schema."columns"
WHERE table_catalog = 'mtg'
AND table_schema = 'mtg'
AND table_name = 'keywords'
AND column_name <> 'deck_url';