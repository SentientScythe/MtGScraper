SELECT 'Mana Average' property, MIN(mana_average), percentile_cont(0.25) WITHIN GROUP (
ORDER BY mana_average) Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY mana_average) median, MODE() WITHIN GROUP (
ORDER BY mana_average), AVG(mana_average), percentile_cont(0.75) WITHIN GROUP (
ORDER BY mana_average) Q3, MAX(mana_average)
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT 'Lands' property, MIN(land), percentile_cont(0.25) WITHIN GROUP (
ORDER BY land) Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY land) median, MODE() WITHIN GROUP (
ORDER BY land), AVG(land), percentile_cont(0.75) WITHIN GROUP (
ORDER BY land) Q3, MAX(land)
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT 'Lands / Mana Average' property, MIN(land / mana_average), percentile_cont(0.25) WITHIN GROUP (
ORDER BY land / mana_average) Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY land / mana_average) median, MODE() WITHIN GROUP (
ORDER BY land / mana_average), AVG(land / mana_average), percentile_cont(0.75) WITHIN GROUP (
ORDER BY land / mana_average) Q3, MAX(land / mana_average)
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND mana_average <> 0
UNION SELECT '0' property, MIN("0" - land), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "0" - land) Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "0" - land) median, MODE() WITHIN GROUP (
ORDER BY "0" - land), AVG("0" - land), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "0" - land) Q3, MAX("0" - land)
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '0.5' property, MIN("0.5"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "0.5") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "0.5") median, MODE() WITHIN GROUP (
ORDER BY "0.5"), AVG("0.5"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "0.5") Q3, MAX("0.5")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '1' property, MIN("1"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "1") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "1") median, MODE() WITHIN GROUP (
ORDER BY "1"), AVG("1"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "1") Q3, MAX("1")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '2' property, MIN("2"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "2") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "2") median, MODE() WITHIN GROUP (
ORDER BY "2"), AVG("2"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "2") Q3, MAX("2")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '3' property, MIN("3"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "3") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "3") median, MODE() WITHIN GROUP (
ORDER BY "3"), AVG("3"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "3") Q3, MAX("3")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '4' property, MIN("4"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "4") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "4") median, MODE() WITHIN GROUP (
ORDER BY "4"), AVG("4"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "4") Q3, MAX("4")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '5' property, MIN("5"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "5") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "5") median, MODE() WITHIN GROUP (
ORDER BY "5"), AVG("5"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "5") Q3, MAX("5")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '6' property, MIN("6"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "6") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "6") median, MODE() WITHIN GROUP (
ORDER BY "6"), AVG("6"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "6") Q3, MAX("6")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '7' property, MIN("7"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "7") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "7") median, MODE() WITHIN GROUP (
ORDER BY "7"), AVG("7"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "7") Q3, MAX("7")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '8' property, MIN("8"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "8") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "8") median, MODE() WITHIN GROUP (
ORDER BY "8"), AVG("8"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "8") Q3, MAX("8")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '9' property, MIN("9"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "9") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "9") median, MODE() WITHIN GROUP (
ORDER BY "9"), AVG("9"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "9") Q3, MAX("9")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '10' property, MIN("10"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "10") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "10") median, MODE() WITHIN GROUP (
ORDER BY "10"), AVG("10"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "10") Q3, MAX("10")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '11' property, MIN("11"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "11") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "11") median, MODE() WITHIN GROUP (
ORDER BY "11"), AVG("11"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "11") Q3, MAX("11")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '12' property, MIN("12"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "12") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "12") median, MODE() WITHIN GROUP (
ORDER BY "12"), AVG("12"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "12") Q3, MAX("12")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '13' property, MIN("13"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "13") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "13") median, MODE() WITHIN GROUP (
ORDER BY "13"), AVG("13"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "13") Q3, MAX("13")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '14' property, MIN("14"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "14") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "14") median, MODE() WITHIN GROUP (
ORDER BY "14"), AVG("14"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "14") Q3, MAX("14")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '15' property, MIN("15"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "15") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "15") median, MODE() WITHIN GROUP (
ORDER BY "15"), AVG("15"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "15") Q3, MAX("15")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '16' property, MIN("16"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "16") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "16") median, MODE() WITHIN GROUP (
ORDER BY "16"), AVG("16"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "16") Q3, MAX("16")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
UNION SELECT '1000000' property, MIN("1000000"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "1000000") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "1000000") median, MODE() WITHIN GROUP (
ORDER BY "1000000"), AVG("1000000"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "1000000") Q3, MAX("1000000")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN cmcs ON
deck_stats.deck_url = cmcs.deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1';