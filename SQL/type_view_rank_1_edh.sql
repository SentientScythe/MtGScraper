SELECT 'artifact' property, MIN("artifact"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "artifact") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "artifact") median, MODE() WITHIN GROUP (
ORDER BY "artifact"), AVG("artifact"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "artifact") Q3, MAX("artifact")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'autobot' property, MIN("autobot"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "autobot") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "autobot") median, MODE() WITHIN GROUP (
ORDER BY "autobot"), AVG("autobot"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "autobot") Q3, MAX("autobot")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'character' property, MIN("character"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "character") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "character") median, MODE() WITHIN GROUP (
ORDER BY "character"), AVG("character"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "character") Q3, MAX("character")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'conspiracy' property, MIN("conspiracy"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "conspiracy") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "conspiracy") median, MODE() WITHIN GROUP (
ORDER BY "conspiracy"), AVG("conspiracy"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "conspiracy") Q3, MAX("conspiracy")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'creature' property, MIN("creature"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "creature") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "creature") median, MODE() WITHIN GROUP (
ORDER BY "creature"), AVG("creature"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "creature") Q3, MAX("creature")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'dragon' property, MIN("dragon"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "dragon") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "dragon") median, MODE() WITHIN GROUP (
ORDER BY "dragon"), AVG("dragon"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "dragon") Q3, MAX("dragon")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'eaturecray' property, MIN("eaturecray"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "eaturecray") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "eaturecray") median, MODE() WITHIN GROUP (
ORDER BY "eaturecray"), AVG("eaturecray"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "eaturecray") Q3, MAX("eaturecray")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'elemental' property, MIN("elemental"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "elemental") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "elemental") median, MODE() WITHIN GROUP (
ORDER BY "elemental"), AVG("elemental"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "elemental") Q3, MAX("elemental")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'enchantment' property, MIN("enchantment"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "enchantment") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "enchantment") median, MODE() WITHIN GROUP (
ORDER BY "enchantment"), AVG("enchantment"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "enchantment") Q3, MAX("enchantment")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'ever' property, MIN("ever"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "ever") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "ever") median, MODE() WITHIN GROUP (
ORDER BY "ever"), AVG("ever"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "ever") Q3, MAX("ever")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'goblin' property, MIN("goblin"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "goblin") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "goblin") median, MODE() WITHIN GROUP (
ORDER BY "goblin"), AVG("goblin"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "goblin") Q3, MAX("goblin")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hero' property, MIN("hero"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hero") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hero") median, MODE() WITHIN GROUP (
ORDER BY "hero"), AVG("hero"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hero") Q3, MAX("hero")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'instant' property, MIN("instant"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "instant") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "instant") median, MODE() WITHIN GROUP (
ORDER BY "instant"), AVG("instant"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "instant") Q3, MAX("instant")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'jaguar' property, MIN("jaguar"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "jaguar") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "jaguar") median, MODE() WITHIN GROUP (
ORDER BY "jaguar"), AVG("jaguar"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "jaguar") Q3, MAX("jaguar")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'knights' property, MIN("knights"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "knights") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "knights") median, MODE() WITHIN GROUP (
ORDER BY "knights"), AVG("knights"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "knights") Q3, MAX("knights")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'land' property, MIN("land"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "land") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "land") median, MODE() WITHIN GROUP (
ORDER BY "land"), AVG("land"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "land") Q3, MAX("land")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'phenomenon' property, MIN("phenomenon"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "phenomenon") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "phenomenon") median, MODE() WITHIN GROUP (
ORDER BY "phenomenon"), AVG("phenomenon"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "phenomenon") Q3, MAX("phenomenon")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'plane' property, MIN("plane"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "plane") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "plane") median, MODE() WITHIN GROUP (
ORDER BY "plane"), AVG("plane"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "plane") Q3, MAX("plane")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'planeswalker' property, MIN("planeswalker"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "planeswalker") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "planeswalker") median, MODE() WITHIN GROUP (
ORDER BY "planeswalker"), AVG("planeswalker"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "planeswalker") Q3, MAX("planeswalker")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'scariest' property, MIN("scariest"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "scariest") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "scariest") median, MODE() WITHIN GROUP (
ORDER BY "scariest"), AVG("scariest"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "scariest") Q3, MAX("scariest")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'scheme' property, MIN("scheme"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "scheme") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "scheme") median, MODE() WITHIN GROUP (
ORDER BY "scheme"), AVG("scheme"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "scheme") Q3, MAX("scheme")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'see' property, MIN("see"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "see") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "see") median, MODE() WITHIN GROUP (
ORDER BY "see"), AVG("see"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "see") Q3, MAX("see")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'sorcery' property, MIN("sorcery"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "sorcery") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "sorcery") median, MODE() WITHIN GROUP (
ORDER BY "sorcery"), AVG("sorcery"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "sorcery") Q3, MAX("sorcery")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'specter' property, MIN("specter"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "specter") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "specter") median, MODE() WITHIN GROUP (
ORDER BY "specter"), AVG("specter"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "specter") Q3, MAX("specter")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'summon' property, MIN("summon"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "summon") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "summon") median, MODE() WITHIN GROUP (
ORDER BY "summon"), AVG("summon"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "summon") Q3, MAX("summon")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'tribal' property, MIN("tribal"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "tribal") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "tribal") median, MODE() WITHIN GROUP (
ORDER BY "tribal"), AVG("tribal"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "tribal") Q3, MAX("tribal")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'vanguard' property, MIN("vanguard"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "vanguard") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "vanguard") median, MODE() WITHIN GROUP (
ORDER BY "vanguard"), AVG("vanguard"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "vanguard") Q3, MAX("vanguard")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'wolf' property, MIN("wolf"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "wolf") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "wolf") median, MODE() WITHIN GROUP (
ORDER BY "wolf"), AVG("wolf"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "wolf") Q3, MAX("wolf")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'you''ll' property, MIN("you'll"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "you'll") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "you'll") median, MODE() WITHIN GROUP (
ORDER BY "you'll"), AVG("you'll"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "you'll") Q3, MAX("you'll")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "types" ON
deck_stats.deck_url = "types".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant');