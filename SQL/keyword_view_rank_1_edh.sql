SELECT 'none' property, MIN("none"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "none") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "none") median, MODE() WITHIN GROUP (
ORDER BY "none"), AVG("none"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "none") Q3, MAX("none")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'adamant' property, MIN("adamant"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "adamant") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "adamant") median, MODE() WITHIN GROUP (
ORDER BY "adamant"), AVG("adamant"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "adamant") Q3, MAX("adamant")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'adapt' property, MIN("adapt"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "adapt") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "adapt") median, MODE() WITHIN GROUP (
ORDER BY "adapt"), AVG("adapt"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "adapt") Q3, MAX("adapt")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'addendum' property, MIN("addendum"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "addendum") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "addendum") median, MODE() WITHIN GROUP (
ORDER BY "addendum"), AVG("addendum"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "addendum") Q3, MAX("addendum")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'affinity' property, MIN("affinity"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "affinity") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "affinity") median, MODE() WITHIN GROUP (
ORDER BY "affinity"), AVG("affinity"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "affinity") Q3, MAX("affinity")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'afflict' property, MIN("afflict"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "afflict") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "afflict") median, MODE() WITHIN GROUP (
ORDER BY "afflict"), AVG("afflict"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "afflict") Q3, MAX("afflict")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'afterlife' property, MIN("afterlife"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "afterlife") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "afterlife") median, MODE() WITHIN GROUP (
ORDER BY "afterlife"), AVG("afterlife"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "afterlife") Q3, MAX("afterlife")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'aftermath' property, MIN("aftermath"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "aftermath") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "aftermath") median, MODE() WITHIN GROUP (
ORDER BY "aftermath"), AVG("aftermath"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "aftermath") Q3, MAX("aftermath")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'amass' property, MIN("amass"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "amass") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "amass") median, MODE() WITHIN GROUP (
ORDER BY "amass"), AVG("amass"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "amass") Q3, MAX("amass")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'amplify' property, MIN("amplify"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "amplify") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "amplify") median, MODE() WITHIN GROUP (
ORDER BY "amplify"), AVG("amplify"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "amplify") Q3, MAX("amplify")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'annihilator' property, MIN("annihilator"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "annihilator") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "annihilator") median, MODE() WITHIN GROUP (
ORDER BY "annihilator"), AVG("annihilator"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "annihilator") Q3, MAX("annihilator")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'ascend' property, MIN("ascend"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "ascend") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "ascend") median, MODE() WITHIN GROUP (
ORDER BY "ascend"), AVG("ascend"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "ascend") Q3, MAX("ascend")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'assemble' property, MIN("assemble"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "assemble") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "assemble") median, MODE() WITHIN GROUP (
ORDER BY "assemble"), AVG("assemble"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "assemble") Q3, MAX("assemble")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'assist' property, MIN("assist"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "assist") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "assist") median, MODE() WITHIN GROUP (
ORDER BY "assist"), AVG("assist"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "assist") Q3, MAX("assist")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'augment' property, MIN("augment"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "augment") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "augment") median, MODE() WITHIN GROUP (
ORDER BY "augment"), AVG("augment"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "augment") Q3, MAX("augment")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'aura_swap' property, MIN("aura_swap"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "aura_swap") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "aura_swap") median, MODE() WITHIN GROUP (
ORDER BY "aura_swap"), AVG("aura_swap"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "aura_swap") Q3, MAX("aura_swap")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'awaken' property, MIN("awaken"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "awaken") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "awaken") median, MODE() WITHIN GROUP (
ORDER BY "awaken"), AVG("awaken"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "awaken") Q3, MAX("awaken")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'banding' property, MIN("banding"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "banding") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "banding") median, MODE() WITHIN GROUP (
ORDER BY "banding"), AVG("banding"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "banding") Q3, MAX("banding")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'basic_landcycling' property, MIN("basic_landcycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "basic_landcycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "basic_landcycling") median, MODE() WITHIN GROUP (
ORDER BY "basic_landcycling"), AVG("basic_landcycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "basic_landcycling") Q3, MAX("basic_landcycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'battalion' property, MIN("battalion"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "battalion") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "battalion") median, MODE() WITHIN GROUP (
ORDER BY "battalion"), AVG("battalion"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "battalion") Q3, MAX("battalion")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'battle_cry' property, MIN("battle_cry"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "battle_cry") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "battle_cry") median, MODE() WITHIN GROUP (
ORDER BY "battle_cry"), AVG("battle_cry"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "battle_cry") Q3, MAX("battle_cry")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'bestow' property, MIN("bestow"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "bestow") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "bestow") median, MODE() WITHIN GROUP (
ORDER BY "bestow"), AVG("bestow"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "bestow") Q3, MAX("bestow")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'bloodrush' property, MIN("bloodrush"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "bloodrush") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "bloodrush") median, MODE() WITHIN GROUP (
ORDER BY "bloodrush"), AVG("bloodrush"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "bloodrush") Q3, MAX("bloodrush")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'bloodthirst' property, MIN("bloodthirst"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "bloodthirst") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "bloodthirst") median, MODE() WITHIN GROUP (
ORDER BY "bloodthirst"), AVG("bloodthirst"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "bloodthirst") Q3, MAX("bloodthirst")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'boast' property, MIN("boast"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "boast") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "boast") median, MODE() WITHIN GROUP (
ORDER BY "boast"), AVG("boast"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "boast") Q3, MAX("boast")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'bolster' property, MIN("bolster"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "bolster") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "bolster") median, MODE() WITHIN GROUP (
ORDER BY "bolster"), AVG("bolster"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "bolster") Q3, MAX("bolster")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'bushido' property, MIN("bushido"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "bushido") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "bushido") median, MODE() WITHIN GROUP (
ORDER BY "bushido"), AVG("bushido"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "bushido") Q3, MAX("bushido")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'buyback' property, MIN("buyback"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "buyback") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "buyback") median, MODE() WITHIN GROUP (
ORDER BY "buyback"), AVG("buyback"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "buyback") Q3, MAX("buyback")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'cascade' property, MIN("cascade"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "cascade") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "cascade") median, MODE() WITHIN GROUP (
ORDER BY "cascade"), AVG("cascade"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "cascade") Q3, MAX("cascade")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'champion' property, MIN("champion"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "champion") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "champion") median, MODE() WITHIN GROUP (
ORDER BY "champion"), AVG("champion"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "champion") Q3, MAX("champion")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'changeling' property, MIN("changeling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "changeling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "changeling") median, MODE() WITHIN GROUP (
ORDER BY "changeling"), AVG("changeling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "changeling") Q3, MAX("changeling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'channel' property, MIN("channel"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "channel") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "channel") median, MODE() WITHIN GROUP (
ORDER BY "channel"), AVG("channel"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "channel") Q3, MAX("channel")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'chroma' property, MIN("chroma"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "chroma") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "chroma") median, MODE() WITHIN GROUP (
ORDER BY "chroma"), AVG("chroma"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "chroma") Q3, MAX("chroma")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'cipher' property, MIN("cipher"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "cipher") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "cipher") median, MODE() WITHIN GROUP (
ORDER BY "cipher"), AVG("cipher"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "cipher") Q3, MAX("cipher")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'clash' property, MIN("clash"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "clash") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "clash") median, MODE() WITHIN GROUP (
ORDER BY "clash"), AVG("clash"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "clash") Q3, MAX("clash")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'cohort' property, MIN("cohort"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "cohort") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "cohort") median, MODE() WITHIN GROUP (
ORDER BY "cohort"), AVG("cohort"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "cohort") Q3, MAX("cohort")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'commander_ninjutsu' property, MIN("commander_ninjutsu"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "commander_ninjutsu") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "commander_ninjutsu") median, MODE() WITHIN GROUP (
ORDER BY "commander_ninjutsu"), AVG("commander_ninjutsu"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "commander_ninjutsu") Q3, MAX("commander_ninjutsu")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'companion' property, MIN("companion"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "companion") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "companion") median, MODE() WITHIN GROUP (
ORDER BY "companion"), AVG("companion"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "companion") Q3, MAX("companion")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'conspire' property, MIN("conspire"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "conspire") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "conspire") median, MODE() WITHIN GROUP (
ORDER BY "conspire"), AVG("conspire"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "conspire") Q3, MAX("conspire")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'constellation' property, MIN("constellation"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "constellation") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "constellation") median, MODE() WITHIN GROUP (
ORDER BY "constellation"), AVG("constellation"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "constellation") Q3, MAX("constellation")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'converge' property, MIN("converge"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "converge") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "converge") median, MODE() WITHIN GROUP (
ORDER BY "converge"), AVG("converge"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "converge") Q3, MAX("converge")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'convoke' property, MIN("convoke"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "convoke") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "convoke") median, MODE() WITHIN GROUP (
ORDER BY "convoke"), AVG("convoke"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "convoke") Q3, MAX("convoke")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'council''s_dilemma' property, MIN("council's_dilemma"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "council's_dilemma") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "council's_dilemma") median, MODE() WITHIN GROUP (
ORDER BY "council's_dilemma"), AVG("council's_dilemma"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "council's_dilemma") Q3, MAX("council's_dilemma")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'crew' property, MIN("crew"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "crew") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "crew") median, MODE() WITHIN GROUP (
ORDER BY "crew"), AVG("crew"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "crew") Q3, MAX("crew")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'cumulative_upkeep' property, MIN("cumulative_upkeep"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "cumulative_upkeep") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "cumulative_upkeep") median, MODE() WITHIN GROUP (
ORDER BY "cumulative_upkeep"), AVG("cumulative_upkeep"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "cumulative_upkeep") Q3, MAX("cumulative_upkeep")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'cycling' property, MIN("cycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "cycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "cycling") median, MODE() WITHIN GROUP (
ORDER BY "cycling"), AVG("cycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "cycling") Q3, MAX("cycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'dash' property, MIN("dash"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "dash") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "dash") median, MODE() WITHIN GROUP (
ORDER BY "dash"), AVG("dash"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "dash") Q3, MAX("dash")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'deathtouch' property, MIN("deathtouch"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "deathtouch") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "deathtouch") median, MODE() WITHIN GROUP (
ORDER BY "deathtouch"), AVG("deathtouch"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "deathtouch") Q3, MAX("deathtouch")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'defender' property, MIN("defender"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "defender") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "defender") median, MODE() WITHIN GROUP (
ORDER BY "defender"), AVG("defender"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "defender") Q3, MAX("defender")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'delirium' property, MIN("delirium"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "delirium") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "delirium") median, MODE() WITHIN GROUP (
ORDER BY "delirium"), AVG("delirium"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "delirium") Q3, MAX("delirium")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'delve' property, MIN("delve"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "delve") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "delve") median, MODE() WITHIN GROUP (
ORDER BY "delve"), AVG("delve"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "delve") Q3, MAX("delve")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'desertwalk' property, MIN("desertwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "desertwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "desertwalk") median, MODE() WITHIN GROUP (
ORDER BY "desertwalk"), AVG("desertwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "desertwalk") Q3, MAX("desertwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'detain' property, MIN("detain"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "detain") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "detain") median, MODE() WITHIN GROUP (
ORDER BY "detain"), AVG("detain"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "detain") Q3, MAX("detain")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'dethrone' property, MIN("dethrone"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "dethrone") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "dethrone") median, MODE() WITHIN GROUP (
ORDER BY "dethrone"), AVG("dethrone"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "dethrone") Q3, MAX("dethrone")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'devoid' property, MIN("devoid"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "devoid") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "devoid") median, MODE() WITHIN GROUP (
ORDER BY "devoid"), AVG("devoid"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "devoid") Q3, MAX("devoid")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'devour' property, MIN("devour"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "devour") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "devour") median, MODE() WITHIN GROUP (
ORDER BY "devour"), AVG("devour"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "devour") Q3, MAX("devour")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'domain' property, MIN("domain"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "domain") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "domain") median, MODE() WITHIN GROUP (
ORDER BY "domain"), AVG("domain"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "domain") Q3, MAX("domain")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'double_strike' property, MIN("double_strike"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "double_strike") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "double_strike") median, MODE() WITHIN GROUP (
ORDER BY "double_strike"), AVG("double_strike"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "double_strike") Q3, MAX("double_strike")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'dredge' property, MIN("dredge"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "dredge") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "dredge") median, MODE() WITHIN GROUP (
ORDER BY "dredge"), AVG("dredge"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "dredge") Q3, MAX("dredge")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'echo' property, MIN("echo"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "echo") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "echo") median, MODE() WITHIN GROUP (
ORDER BY "echo"), AVG("echo"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "echo") Q3, MAX("echo")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'embalm' property, MIN("embalm"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "embalm") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "embalm") median, MODE() WITHIN GROUP (
ORDER BY "embalm"), AVG("embalm"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "embalm") Q3, MAX("embalm")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'emerge' property, MIN("emerge"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "emerge") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "emerge") median, MODE() WITHIN GROUP (
ORDER BY "emerge"), AVG("emerge"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "emerge") Q3, MAX("emerge")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'eminence' property, MIN("eminence"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "eminence") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "eminence") median, MODE() WITHIN GROUP (
ORDER BY "eminence"), AVG("eminence"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "eminence") Q3, MAX("eminence")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'enchant' property, MIN("enchant"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "enchant") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "enchant") median, MODE() WITHIN GROUP (
ORDER BY "enchant"), AVG("enchant"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "enchant") Q3, MAX("enchant")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'enrage' property, MIN("enrage"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "enrage") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "enrage") median, MODE() WITHIN GROUP (
ORDER BY "enrage"), AVG("enrage"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "enrage") Q3, MAX("enrage")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'entwine' property, MIN("entwine"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "entwine") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "entwine") median, MODE() WITHIN GROUP (
ORDER BY "entwine"), AVG("entwine"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "entwine") Q3, MAX("entwine")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'epic' property, MIN("epic"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "epic") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "epic") median, MODE() WITHIN GROUP (
ORDER BY "epic"), AVG("epic"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "epic") Q3, MAX("epic")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'equip' property, MIN("equip"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "equip") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "equip") median, MODE() WITHIN GROUP (
ORDER BY "equip"), AVG("equip"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "equip") Q3, MAX("equip")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'escalate' property, MIN("escalate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "escalate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "escalate") median, MODE() WITHIN GROUP (
ORDER BY "escalate"), AVG("escalate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "escalate") Q3, MAX("escalate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'escape' property, MIN("escape"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "escape") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "escape") median, MODE() WITHIN GROUP (
ORDER BY "escape"), AVG("escape"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "escape") Q3, MAX("escape")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'eternalize' property, MIN("eternalize"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "eternalize") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "eternalize") median, MODE() WITHIN GROUP (
ORDER BY "eternalize"), AVG("eternalize"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "eternalize") Q3, MAX("eternalize")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'evoke' property, MIN("evoke"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "evoke") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "evoke") median, MODE() WITHIN GROUP (
ORDER BY "evoke"), AVG("evoke"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "evoke") Q3, MAX("evoke")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'evolve' property, MIN("evolve"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "evolve") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "evolve") median, MODE() WITHIN GROUP (
ORDER BY "evolve"), AVG("evolve"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "evolve") Q3, MAX("evolve")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'exalted' property, MIN("exalted"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "exalted") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "exalted") median, MODE() WITHIN GROUP (
ORDER BY "exalted"), AVG("exalted"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "exalted") Q3, MAX("exalted")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'exert' property, MIN("exert"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "exert") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "exert") median, MODE() WITHIN GROUP (
ORDER BY "exert"), AVG("exert"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "exert") Q3, MAX("exert")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'exploit' property, MIN("exploit"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "exploit") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "exploit") median, MODE() WITHIN GROUP (
ORDER BY "exploit"), AVG("exploit"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "exploit") Q3, MAX("exploit")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'explore' property, MIN("explore"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "explore") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "explore") median, MODE() WITHIN GROUP (
ORDER BY "explore"), AVG("explore"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "explore") Q3, MAX("explore")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'extort' property, MIN("extort"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "extort") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "extort") median, MODE() WITHIN GROUP (
ORDER BY "extort"), AVG("extort"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "extort") Q3, MAX("extort")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fabricate' property, MIN("fabricate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fabricate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fabricate") median, MODE() WITHIN GROUP (
ORDER BY "fabricate"), AVG("fabricate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fabricate") Q3, MAX("fabricate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fading' property, MIN("fading"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fading") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fading") median, MODE() WITHIN GROUP (
ORDER BY "fading"), AVG("fading"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fading") Q3, MAX("fading")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fateful_hour' property, MIN("fateful_hour"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fateful_hour") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fateful_hour") median, MODE() WITHIN GROUP (
ORDER BY "fateful_hour"), AVG("fateful_hour"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fateful_hour") Q3, MAX("fateful_hour")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fateseal' property, MIN("fateseal"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fateseal") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fateseal") median, MODE() WITHIN GROUP (
ORDER BY "fateseal"), AVG("fateseal"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fateseal") Q3, MAX("fateseal")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fear' property, MIN("fear"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fear") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fear") median, MODE() WITHIN GROUP (
ORDER BY "fear"), AVG("fear"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fear") Q3, MAX("fear")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'ferocious' property, MIN("ferocious"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "ferocious") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "ferocious") median, MODE() WITHIN GROUP (
ORDER BY "ferocious"), AVG("ferocious"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "ferocious") Q3, MAX("ferocious")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fight' property, MIN("fight"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fight") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fight") median, MODE() WITHIN GROUP (
ORDER BY "fight"), AVG("fight"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fight") Q3, MAX("fight")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'first_strike' property, MIN("first_strike"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "first_strike") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "first_strike") median, MODE() WITHIN GROUP (
ORDER BY "first_strike"), AVG("first_strike"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "first_strike") Q3, MAX("first_strike")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'flanking' property, MIN("flanking"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "flanking") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "flanking") median, MODE() WITHIN GROUP (
ORDER BY "flanking"), AVG("flanking"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "flanking") Q3, MAX("flanking")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'flash' property, MIN("flash"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "flash") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "flash") median, MODE() WITHIN GROUP (
ORDER BY "flash"), AVG("flash"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "flash") Q3, MAX("flash")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'flashback' property, MIN("flashback"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "flashback") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "flashback") median, MODE() WITHIN GROUP (
ORDER BY "flashback"), AVG("flashback"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "flashback") Q3, MAX("flashback")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'flying' property, MIN("flying"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "flying") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "flying") median, MODE() WITHIN GROUP (
ORDER BY "flying"), AVG("flying"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "flying") Q3, MAX("flying")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'forecast' property, MIN("forecast"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "forecast") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "forecast") median, MODE() WITHIN GROUP (
ORDER BY "forecast"), AVG("forecast"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "forecast") Q3, MAX("forecast")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'forestcycling' property, MIN("forestcycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "forestcycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "forestcycling") median, MODE() WITHIN GROUP (
ORDER BY "forestcycling"), AVG("forestcycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "forestcycling") Q3, MAX("forestcycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'forestwalk' property, MIN("forestwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "forestwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "forestwalk") median, MODE() WITHIN GROUP (
ORDER BY "forestwalk"), AVG("forestwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "forestwalk") Q3, MAX("forestwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'foretell' property, MIN("foretell"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "foretell") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "foretell") median, MODE() WITHIN GROUP (
ORDER BY "foretell"), AVG("foretell"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "foretell") Q3, MAX("foretell")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'formidable' property, MIN("formidable"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "formidable") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "formidable") median, MODE() WITHIN GROUP (
ORDER BY "formidable"), AVG("formidable"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "formidable") Q3, MAX("formidable")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fortify' property, MIN("fortify"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fortify") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fortify") median, MODE() WITHIN GROUP (
ORDER BY "fortify"), AVG("fortify"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fortify") Q3, MAX("fortify")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'frenzy' property, MIN("frenzy"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "frenzy") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "frenzy") median, MODE() WITHIN GROUP (
ORDER BY "frenzy"), AVG("frenzy"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "frenzy") Q3, MAX("frenzy")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'fuse' property, MIN("fuse"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "fuse") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "fuse") median, MODE() WITHIN GROUP (
ORDER BY "fuse"), AVG("fuse"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "fuse") Q3, MAX("fuse")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'goad' property, MIN("goad"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "goad") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "goad") median, MODE() WITHIN GROUP (
ORDER BY "goad"), AVG("goad"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "goad") Q3, MAX("goad")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'graft' property, MIN("graft"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "graft") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "graft") median, MODE() WITHIN GROUP (
ORDER BY "graft"), AVG("graft"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "graft") Q3, MAX("graft")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'grandeur' property, MIN("grandeur"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "grandeur") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "grandeur") median, MODE() WITHIN GROUP (
ORDER BY "grandeur"), AVG("grandeur"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "grandeur") Q3, MAX("grandeur")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'gravestorm' property, MIN("gravestorm"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "gravestorm") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "gravestorm") median, MODE() WITHIN GROUP (
ORDER BY "gravestorm"), AVG("gravestorm"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "gravestorm") Q3, MAX("gravestorm")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'haste' property, MIN("haste"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "haste") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "haste") median, MODE() WITHIN GROUP (
ORDER BY "haste"), AVG("haste"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "haste") Q3, MAX("haste")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'haunt' property, MIN("haunt"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "haunt") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "haunt") median, MODE() WITHIN GROUP (
ORDER BY "haunt"), AVG("haunt"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "haunt") Q3, MAX("haunt")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hellbent' property, MIN("hellbent"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hellbent") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hellbent") median, MODE() WITHIN GROUP (
ORDER BY "hellbent"), AVG("hellbent"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hellbent") Q3, MAX("hellbent")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hero''s_reward' property, MIN("hero's_reward"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hero's_reward") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hero's_reward") median, MODE() WITHIN GROUP (
ORDER BY "hero's_reward"), AVG("hero's_reward"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hero's_reward") Q3, MAX("hero's_reward")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'heroic' property, MIN("heroic"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "heroic") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "heroic") median, MODE() WITHIN GROUP (
ORDER BY "heroic"), AVG("heroic"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "heroic") Q3, MAX("heroic")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hexproof' property, MIN("hexproof"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hexproof") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hexproof") median, MODE() WITHIN GROUP (
ORDER BY "hexproof"), AVG("hexproof"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hexproof") Q3, MAX("hexproof")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hexproof_from' property, MIN("hexproof_from"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hexproof_from") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hexproof_from") median, MODE() WITHIN GROUP (
ORDER BY "hexproof_from"), AVG("hexproof_from"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hexproof_from") Q3, MAX("hexproof_from")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hidden_agenda' property, MIN("hidden_agenda"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hidden_agenda") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hidden_agenda") median, MODE() WITHIN GROUP (
ORDER BY "hidden_agenda"), AVG("hidden_agenda"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hidden_agenda") Q3, MAX("hidden_agenda")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'hideaway' property, MIN("hideaway"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "hideaway") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "hideaway") median, MODE() WITHIN GROUP (
ORDER BY "hideaway"), AVG("hideaway"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "hideaway") Q3, MAX("hideaway")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'horsemanship' property, MIN("horsemanship"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "horsemanship") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "horsemanship") median, MODE() WITHIN GROUP (
ORDER BY "horsemanship"), AVG("horsemanship"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "horsemanship") Q3, MAX("horsemanship")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'imprint' property, MIN("imprint"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "imprint") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "imprint") median, MODE() WITHIN GROUP (
ORDER BY "imprint"), AVG("imprint"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "imprint") Q3, MAX("imprint")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'improvise' property, MIN("improvise"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "improvise") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "improvise") median, MODE() WITHIN GROUP (
ORDER BY "improvise"), AVG("improvise"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "improvise") Q3, MAX("improvise")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'indestructible' property, MIN("indestructible"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "indestructible") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "indestructible") median, MODE() WITHIN GROUP (
ORDER BY "indestructible"), AVG("indestructible"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "indestructible") Q3, MAX("indestructible")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'infect' property, MIN("infect"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "infect") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "infect") median, MODE() WITHIN GROUP (
ORDER BY "infect"), AVG("infect"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "infect") Q3, MAX("infect")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'ingest' property, MIN("ingest"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "ingest") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "ingest") median, MODE() WITHIN GROUP (
ORDER BY "ingest"), AVG("ingest"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "ingest") Q3, MAX("ingest")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'inspired' property, MIN("inspired"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "inspired") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "inspired") median, MODE() WITHIN GROUP (
ORDER BY "inspired"), AVG("inspired"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "inspired") Q3, MAX("inspired")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'intimidate' property, MIN("intimidate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "intimidate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "intimidate") median, MODE() WITHIN GROUP (
ORDER BY "intimidate"), AVG("intimidate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "intimidate") Q3, MAX("intimidate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'investigate' property, MIN("investigate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "investigate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "investigate") median, MODE() WITHIN GROUP (
ORDER BY "investigate"), AVG("investigate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "investigate") Q3, MAX("investigate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'islandcycling' property, MIN("islandcycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "islandcycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "islandcycling") median, MODE() WITHIN GROUP (
ORDER BY "islandcycling"), AVG("islandcycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "islandcycling") Q3, MAX("islandcycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'islandwalk' property, MIN("islandwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "islandwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "islandwalk") median, MODE() WITHIN GROUP (
ORDER BY "islandwalk"), AVG("islandwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "islandwalk") Q3, MAX("islandwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'join_forces' property, MIN("join_forces"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "join_forces") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "join_forces") median, MODE() WITHIN GROUP (
ORDER BY "join_forces"), AVG("join_forces"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "join_forces") Q3, MAX("join_forces")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'jump-start' property, MIN("jump-start"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "jump-start") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "jump-start") median, MODE() WITHIN GROUP (
ORDER BY "jump-start"), AVG("jump-start"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "jump-start") Q3, MAX("jump-start")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'kicker' property, MIN("kicker"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "kicker") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "kicker") median, MODE() WITHIN GROUP (
ORDER BY "kicker"), AVG("kicker"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "kicker") Q3, MAX("kicker")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'kinfall' property, MIN("kinfall"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "kinfall") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "kinfall") median, MODE() WITHIN GROUP (
ORDER BY "kinfall"), AVG("kinfall"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "kinfall") Q3, MAX("kinfall")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'kinship' property, MIN("kinship"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "kinship") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "kinship") median, MODE() WITHIN GROUP (
ORDER BY "kinship"), AVG("kinship"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "kinship") Q3, MAX("kinship")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'landcycling' property, MIN("landcycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "landcycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "landcycling") median, MODE() WITHIN GROUP (
ORDER BY "landcycling"), AVG("landcycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "landcycling") Q3, MAX("landcycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'landfall' property, MIN("landfall"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "landfall") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "landfall") median, MODE() WITHIN GROUP (
ORDER BY "landfall"), AVG("landfall"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "landfall") Q3, MAX("landfall")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'landship' property, MIN("landship"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "landship") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "landship") median, MODE() WITHIN GROUP (
ORDER BY "landship"), AVG("landship"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "landship") Q3, MAX("landship")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'landwalk' property, MIN("landwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "landwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "landwalk") median, MODE() WITHIN GROUP (
ORDER BY "landwalk"), AVG("landwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "landwalk") Q3, MAX("landwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'legacy' property, MIN("legacy"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "legacy") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "legacy") median, MODE() WITHIN GROUP (
ORDER BY "legacy"), AVG("legacy"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "legacy") Q3, MAX("legacy")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'legendary_landwalk' property, MIN("legendary_landwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "legendary_landwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "legendary_landwalk") median, MODE() WITHIN GROUP (
ORDER BY "legendary_landwalk"), AVG("legendary_landwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "legendary_landwalk") Q3, MAX("legendary_landwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'level_up' property, MIN("level_up"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "level_up") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "level_up") median, MODE() WITHIN GROUP (
ORDER BY "level_up"), AVG("level_up"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "level_up") Q3, MAX("level_up")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'lieutenant' property, MIN("lieutenant"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "lieutenant") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "lieutenant") median, MODE() WITHIN GROUP (
ORDER BY "lieutenant"), AVG("lieutenant"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "lieutenant") Q3, MAX("lieutenant")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'lifelink' property, MIN("lifelink"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "lifelink") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "lifelink") median, MODE() WITHIN GROUP (
ORDER BY "lifelink"), AVG("lifelink"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "lifelink") Q3, MAX("lifelink")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'living_weapon' property, MIN("living_weapon"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "living_weapon") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "living_weapon") median, MODE() WITHIN GROUP (
ORDER BY "living_weapon"), AVG("living_weapon"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "living_weapon") Q3, MAX("living_weapon")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'madness' property, MIN("madness"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "madness") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "madness") median, MODE() WITHIN GROUP (
ORDER BY "madness"), AVG("madness"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "madness") Q3, MAX("madness")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'manifest' property, MIN("manifest"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "manifest") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "manifest") median, MODE() WITHIN GROUP (
ORDER BY "manifest"), AVG("manifest"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "manifest") Q3, MAX("manifest")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'megamorph' property, MIN("megamorph"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "megamorph") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "megamorph") median, MODE() WITHIN GROUP (
ORDER BY "megamorph"), AVG("megamorph"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "megamorph") Q3, MAX("megamorph")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'meld' property, MIN("meld"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "meld") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "meld") median, MODE() WITHIN GROUP (
ORDER BY "meld"), AVG("meld"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "meld") Q3, MAX("meld")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'melee' property, MIN("melee"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "melee") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "melee") median, MODE() WITHIN GROUP (
ORDER BY "melee"), AVG("melee"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "melee") Q3, MAX("melee")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'menace' property, MIN("menace"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "menace") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "menace") median, MODE() WITHIN GROUP (
ORDER BY "menace"), AVG("menace"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "menace") Q3, MAX("menace")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'mentor' property, MIN("mentor"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "mentor") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "mentor") median, MODE() WITHIN GROUP (
ORDER BY "mentor"), AVG("mentor"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "mentor") Q3, MAX("mentor")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'metalcraft' property, MIN("metalcraft"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "metalcraft") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "metalcraft") median, MODE() WITHIN GROUP (
ORDER BY "metalcraft"), AVG("metalcraft"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "metalcraft") Q3, MAX("metalcraft")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'mill' property, MIN("mill"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "mill") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "mill") median, MODE() WITHIN GROUP (
ORDER BY "mill"), AVG("mill"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "mill") Q3, MAX("mill")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'miracle' property, MIN("miracle"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "miracle") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "miracle") median, MODE() WITHIN GROUP (
ORDER BY "miracle"), AVG("miracle"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "miracle") Q3, MAX("miracle")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'modular' property, MIN("modular"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "modular") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "modular") median, MODE() WITHIN GROUP (
ORDER BY "modular"), AVG("modular"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "modular") Q3, MAX("modular")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'monstrosity' property, MIN("monstrosity"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "monstrosity") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "monstrosity") median, MODE() WITHIN GROUP (
ORDER BY "monstrosity"), AVG("monstrosity"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "monstrosity") Q3, MAX("monstrosity")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'morbid' property, MIN("morbid"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "morbid") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "morbid") median, MODE() WITHIN GROUP (
ORDER BY "morbid"), AVG("morbid"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "morbid") Q3, MAX("morbid")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'morph' property, MIN("morph"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "morph") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "morph") median, MODE() WITHIN GROUP (
ORDER BY "morph"), AVG("morph"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "morph") Q3, MAX("morph")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'mountaincycling' property, MIN("mountaincycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "mountaincycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "mountaincycling") median, MODE() WITHIN GROUP (
ORDER BY "mountaincycling"), AVG("mountaincycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "mountaincycling") Q3, MAX("mountaincycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'mountainwalk' property, MIN("mountainwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "mountainwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "mountainwalk") median, MODE() WITHIN GROUP (
ORDER BY "mountainwalk"), AVG("mountainwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "mountainwalk") Q3, MAX("mountainwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'multikicker' property, MIN("multikicker"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "multikicker") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "multikicker") median, MODE() WITHIN GROUP (
ORDER BY "multikicker"), AVG("multikicker"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "multikicker") Q3, MAX("multikicker")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'mutate' property, MIN("mutate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "mutate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "mutate") median, MODE() WITHIN GROUP (
ORDER BY "mutate"), AVG("mutate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "mutate") Q3, MAX("mutate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'myriad' property, MIN("myriad"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "myriad") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "myriad") median, MODE() WITHIN GROUP (
ORDER BY "myriad"), AVG("myriad"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "myriad") Q3, MAX("myriad")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'ninjutsu' property, MIN("ninjutsu"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "ninjutsu") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "ninjutsu") median, MODE() WITHIN GROUP (
ORDER BY "ninjutsu"), AVG("ninjutsu"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "ninjutsu") Q3, MAX("ninjutsu")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'nonbasic_landwalk' property, MIN("nonbasic_landwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "nonbasic_landwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "nonbasic_landwalk") median, MODE() WITHIN GROUP (
ORDER BY "nonbasic_landwalk"), AVG("nonbasic_landwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "nonbasic_landwalk") Q3, MAX("nonbasic_landwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'outlast' property, MIN("outlast"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "outlast") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "outlast") median, MODE() WITHIN GROUP (
ORDER BY "outlast"), AVG("outlast"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "outlast") Q3, MAX("outlast")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'overload' property, MIN("overload"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "overload") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "overload") median, MODE() WITHIN GROUP (
ORDER BY "overload"), AVG("overload"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "overload") Q3, MAX("overload")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'parley' property, MIN("parley"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "parley") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "parley") median, MODE() WITHIN GROUP (
ORDER BY "parley"), AVG("parley"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "parley") Q3, MAX("parley")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'partner' property, MIN("partner"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "partner") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "partner") median, MODE() WITHIN GROUP (
ORDER BY "partner"), AVG("partner"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "partner") Q3, MAX("partner")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'partner_with' property, MIN("partner_with"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "partner_with") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "partner_with") median, MODE() WITHIN GROUP (
ORDER BY "partner_with"), AVG("partner_with"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "partner_with") Q3, MAX("partner_with")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'persist' property, MIN("persist"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "persist") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "persist") median, MODE() WITHIN GROUP (
ORDER BY "persist"), AVG("persist"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "persist") Q3, MAX("persist")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'phasing' property, MIN("phasing"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "phasing") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "phasing") median, MODE() WITHIN GROUP (
ORDER BY "phasing"), AVG("phasing"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "phasing") Q3, MAX("phasing")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'plainscycling' property, MIN("plainscycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "plainscycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "plainscycling") median, MODE() WITHIN GROUP (
ORDER BY "plainscycling"), AVG("plainscycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "plainscycling") Q3, MAX("plainscycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'plainswalk' property, MIN("plainswalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "plainswalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "plainswalk") median, MODE() WITHIN GROUP (
ORDER BY "plainswalk"), AVG("plainswalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "plainswalk") Q3, MAX("plainswalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'populate' property, MIN("populate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "populate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "populate") median, MODE() WITHIN GROUP (
ORDER BY "populate"), AVG("populate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "populate") Q3, MAX("populate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'proliferate' property, MIN("proliferate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "proliferate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "proliferate") median, MODE() WITHIN GROUP (
ORDER BY "proliferate"), AVG("proliferate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "proliferate") Q3, MAX("proliferate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'protection' property, MIN("protection"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "protection") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "protection") median, MODE() WITHIN GROUP (
ORDER BY "protection"), AVG("protection"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "protection") Q3, MAX("protection")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'provoke' property, MIN("provoke"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "provoke") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "provoke") median, MODE() WITHIN GROUP (
ORDER BY "provoke"), AVG("provoke"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "provoke") Q3, MAX("provoke")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'prowess' property, MIN("prowess"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "prowess") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "prowess") median, MODE() WITHIN GROUP (
ORDER BY "prowess"), AVG("prowess"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "prowess") Q3, MAX("prowess")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'prowl' property, MIN("prowl"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "prowl") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "prowl") median, MODE() WITHIN GROUP (
ORDER BY "prowl"), AVG("prowl"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "prowl") Q3, MAX("prowl")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'radiance' property, MIN("radiance"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "radiance") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "radiance") median, MODE() WITHIN GROUP (
ORDER BY "radiance"), AVG("radiance"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "radiance") Q3, MAX("radiance")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'raid' property, MIN("raid"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "raid") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "raid") median, MODE() WITHIN GROUP (
ORDER BY "raid"), AVG("raid"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "raid") Q3, MAX("raid")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'rally' property, MIN("rally"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "rally") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "rally") median, MODE() WITHIN GROUP (
ORDER BY "rally"), AVG("rally"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "rally") Q3, MAX("rally")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'rampage' property, MIN("rampage"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "rampage") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "rampage") median, MODE() WITHIN GROUP (
ORDER BY "rampage"), AVG("rampage"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "rampage") Q3, MAX("rampage")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'reach' property, MIN("reach"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "reach") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "reach") median, MODE() WITHIN GROUP (
ORDER BY "reach"), AVG("reach"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "reach") Q3, MAX("reach")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'rebound' property, MIN("rebound"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "rebound") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "rebound") median, MODE() WITHIN GROUP (
ORDER BY "rebound"), AVG("rebound"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "rebound") Q3, MAX("rebound")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'recover' property, MIN("recover"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "recover") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "recover") median, MODE() WITHIN GROUP (
ORDER BY "recover"), AVG("recover"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "recover") Q3, MAX("recover")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'reinforce' property, MIN("reinforce"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "reinforce") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "reinforce") median, MODE() WITHIN GROUP (
ORDER BY "reinforce"), AVG("reinforce"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "reinforce") Q3, MAX("reinforce")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'renown' property, MIN("renown"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "renown") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "renown") median, MODE() WITHIN GROUP (
ORDER BY "renown"), AVG("renown"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "renown") Q3, MAX("renown")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'replicate' property, MIN("replicate"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "replicate") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "replicate") median, MODE() WITHIN GROUP (
ORDER BY "replicate"), AVG("replicate"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "replicate") Q3, MAX("replicate")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'retrace' property, MIN("retrace"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "retrace") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "retrace") median, MODE() WITHIN GROUP (
ORDER BY "retrace"), AVG("retrace"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "retrace") Q3, MAX("retrace")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'revolt' property, MIN("revolt"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "revolt") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "revolt") median, MODE() WITHIN GROUP (
ORDER BY "revolt"), AVG("revolt"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "revolt") Q3, MAX("revolt")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'riot' property, MIN("riot"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "riot") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "riot") median, MODE() WITHIN GROUP (
ORDER BY "riot"), AVG("riot"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "riot") Q3, MAX("riot")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'ripple' property, MIN("ripple"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "ripple") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "ripple") median, MODE() WITHIN GROUP (
ORDER BY "ripple"), AVG("ripple"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "ripple") Q3, MAX("ripple")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'scavenge' property, MIN("scavenge"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "scavenge") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "scavenge") median, MODE() WITHIN GROUP (
ORDER BY "scavenge"), AVG("scavenge"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "scavenge") Q3, MAX("scavenge")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'scry' property, MIN("scry"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "scry") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "scry") median, MODE() WITHIN GROUP (
ORDER BY "scry"), AVG("scry"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "scry") Q3, MAX("scry")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'shadow' property, MIN("shadow"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "shadow") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "shadow") median, MODE() WITHIN GROUP (
ORDER BY "shadow"), AVG("shadow"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "shadow") Q3, MAX("shadow")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'shroud' property, MIN("shroud"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "shroud") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "shroud") median, MODE() WITHIN GROUP (
ORDER BY "shroud"), AVG("shroud"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "shroud") Q3, MAX("shroud")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'skulk' property, MIN("skulk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "skulk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "skulk") median, MODE() WITHIN GROUP (
ORDER BY "skulk"), AVG("skulk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "skulk") Q3, MAX("skulk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'slivercycling' property, MIN("slivercycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "slivercycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "slivercycling") median, MODE() WITHIN GROUP (
ORDER BY "slivercycling"), AVG("slivercycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "slivercycling") Q3, MAX("slivercycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'soulbond' property, MIN("soulbond"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "soulbond") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "soulbond") median, MODE() WITHIN GROUP (
ORDER BY "soulbond"), AVG("soulbond"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "soulbond") Q3, MAX("soulbond")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'soulshift' property, MIN("soulshift"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "soulshift") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "soulshift") median, MODE() WITHIN GROUP (
ORDER BY "soulshift"), AVG("soulshift"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "soulshift") Q3, MAX("soulshift")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'spectacle' property, MIN("spectacle"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "spectacle") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "spectacle") median, MODE() WITHIN GROUP (
ORDER BY "spectacle"), AVG("spectacle"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "spectacle") Q3, MAX("spectacle")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'spell_mastery' property, MIN("spell_mastery"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "spell_mastery") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "spell_mastery") median, MODE() WITHIN GROUP (
ORDER BY "spell_mastery"), AVG("spell_mastery"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "spell_mastery") Q3, MAX("spell_mastery")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'splice' property, MIN("splice"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "splice") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "splice") median, MODE() WITHIN GROUP (
ORDER BY "splice"), AVG("splice"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "splice") Q3, MAX("splice")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'split_second' property, MIN("split_second"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "split_second") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "split_second") median, MODE() WITHIN GROUP (
ORDER BY "split_second"), AVG("split_second"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "split_second") Q3, MAX("split_second")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'storm' property, MIN("storm"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "storm") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "storm") median, MODE() WITHIN GROUP (
ORDER BY "storm"), AVG("storm"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "storm") Q3, MAX("storm")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'strive' property, MIN("strive"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "strive") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "strive") median, MODE() WITHIN GROUP (
ORDER BY "strive"), AVG("strive"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "strive") Q3, MAX("strive")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'sunburst' property, MIN("sunburst"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "sunburst") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "sunburst") median, MODE() WITHIN GROUP (
ORDER BY "sunburst"), AVG("sunburst"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "sunburst") Q3, MAX("sunburst")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'support' property, MIN("support"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "support") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "support") median, MODE() WITHIN GROUP (
ORDER BY "support"), AVG("support"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "support") Q3, MAX("support")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'surge' property, MIN("surge"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "surge") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "surge") median, MODE() WITHIN GROUP (
ORDER BY "surge"), AVG("surge"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "surge") Q3, MAX("surge")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'surveil' property, MIN("surveil"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "surveil") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "surveil") median, MODE() WITHIN GROUP (
ORDER BY "surveil"), AVG("surveil"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "surveil") Q3, MAX("surveil")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'suspend' property, MIN("suspend"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "suspend") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "suspend") median, MODE() WITHIN GROUP (
ORDER BY "suspend"), AVG("suspend"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "suspend") Q3, MAX("suspend")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'swampcycling' property, MIN("swampcycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "swampcycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "swampcycling") median, MODE() WITHIN GROUP (
ORDER BY "swampcycling"), AVG("swampcycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "swampcycling") Q3, MAX("swampcycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'swampwalk' property, MIN("swampwalk"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "swampwalk") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "swampwalk") median, MODE() WITHIN GROUP (
ORDER BY "swampwalk"), AVG("swampwalk"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "swampwalk") Q3, MAX("swampwalk")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'sweep' property, MIN("sweep"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "sweep") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "sweep") median, MODE() WITHIN GROUP (
ORDER BY "sweep"), AVG("sweep"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "sweep") Q3, MAX("sweep")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'tempting_offer' property, MIN("tempting_offer"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "tempting_offer") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "tempting_offer") median, MODE() WITHIN GROUP (
ORDER BY "tempting_offer"), AVG("tempting_offer"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "tempting_offer") Q3, MAX("tempting_offer")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'threshold' property, MIN("threshold"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "threshold") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "threshold") median, MODE() WITHIN GROUP (
ORDER BY "threshold"), AVG("threshold"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "threshold") Q3, MAX("threshold")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'totem_armor' property, MIN("totem_armor"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "totem_armor") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "totem_armor") median, MODE() WITHIN GROUP (
ORDER BY "totem_armor"), AVG("totem_armor"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "totem_armor") Q3, MAX("totem_armor")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'trample' property, MIN("trample"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "trample") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "trample") median, MODE() WITHIN GROUP (
ORDER BY "trample"), AVG("trample"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "trample") Q3, MAX("trample")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'transfigure' property, MIN("transfigure"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "transfigure") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "transfigure") median, MODE() WITHIN GROUP (
ORDER BY "transfigure"), AVG("transfigure"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "transfigure") Q3, MAX("transfigure")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'transform' property, MIN("transform"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "transform") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "transform") median, MODE() WITHIN GROUP (
ORDER BY "transform"), AVG("transform"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "transform") Q3, MAX("transform")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'transmute' property, MIN("transmute"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "transmute") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "transmute") median, MODE() WITHIN GROUP (
ORDER BY "transmute"), AVG("transmute"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "transmute") Q3, MAX("transmute")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'tribute' property, MIN("tribute"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "tribute") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "tribute") median, MODE() WITHIN GROUP (
ORDER BY "tribute"), AVG("tribute"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "tribute") Q3, MAX("tribute")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'undaunted' property, MIN("undaunted"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "undaunted") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "undaunted") median, MODE() WITHIN GROUP (
ORDER BY "undaunted"), AVG("undaunted"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "undaunted") Q3, MAX("undaunted")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'underdog' property, MIN("underdog"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "underdog") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "underdog") median, MODE() WITHIN GROUP (
ORDER BY "underdog"), AVG("underdog"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "underdog") Q3, MAX("underdog")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'undergrowth' property, MIN("undergrowth"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "undergrowth") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "undergrowth") median, MODE() WITHIN GROUP (
ORDER BY "undergrowth"), AVG("undergrowth"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "undergrowth") Q3, MAX("undergrowth")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'undying' property, MIN("undying"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "undying") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "undying") median, MODE() WITHIN GROUP (
ORDER BY "undying"), AVG("undying"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "undying") Q3, MAX("undying")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'unearth' property, MIN("unearth"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "unearth") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "unearth") median, MODE() WITHIN GROUP (
ORDER BY "unearth"), AVG("unearth"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "unearth") Q3, MAX("unearth")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'unleash' property, MIN("unleash"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "unleash") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "unleash") median, MODE() WITHIN GROUP (
ORDER BY "unleash"), AVG("unleash"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "unleash") Q3, MAX("unleash")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'vanishing' property, MIN("vanishing"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "vanishing") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "vanishing") median, MODE() WITHIN GROUP (
ORDER BY "vanishing"), AVG("vanishing"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "vanishing") Q3, MAX("vanishing")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'vigilance' property, MIN("vigilance"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "vigilance") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "vigilance") median, MODE() WITHIN GROUP (
ORDER BY "vigilance"), AVG("vigilance"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "vigilance") Q3, MAX("vigilance")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'will_of_the_council' property, MIN("will_of_the_council"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "will_of_the_council") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "will_of_the_council") median, MODE() WITHIN GROUP (
ORDER BY "will_of_the_council"), AVG("will_of_the_council"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "will_of_the_council") Q3, MAX("will_of_the_council")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'wither' property, MIN("wither"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "wither") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "wither") median, MODE() WITHIN GROUP (
ORDER BY "wither"), AVG("wither"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "wither") Q3, MAX("wither")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant')
UNION SELECT 'wizardcycling' property, MIN("wizardcycling"), percentile_cont(0.25) WITHIN GROUP (
ORDER BY "wizardcycling") Q1, percentile_cont(0.5) WITHIN GROUP (
ORDER BY "wizardcycling") median, MODE() WITHIN GROUP (
ORDER BY "wizardcycling"), AVG("wizardcycling"), percentile_cont(0.75) WITHIN GROUP (
ORDER BY "wizardcycling") Q3, MAX("wizardcycling")
FROM deck_stats
LEFT JOIN tournament_decks ON
deck_stats.deck_url = tournament_decks.deck_url
LEFT JOIN "keywords" ON
deck_stats.deck_url = "keywords".deck_url
WHERE unknown_cards_main = FALSE
AND "rank" = '1'
AND "format" IN ('Elder Dragon Highlander', 'EDH Online', 'EDH Peasant');