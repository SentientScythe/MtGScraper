UPDATE mtg.tournament_decks
SET "format" = CASE
		WHEN event_url LIKE '%ST' THEN 'Standard'
		WHEN event_url LIKE '%MO' THEN 'Modern'
		WHEN event_url LIKE '%LE' THEN 'Legacy'
		WHEN event_url LIKE '%VI' THEN 'Vintage'
		WHEN event_url LIKE '%LI' THEN 'Limited'
		WHEN event_url LIKE '%EX' THEN 'Extended'
		WHEN event_url LIKE '%PAU' THEN 'Pauper'
		WHEN event_url LIKE '%PEA' THEN 'Peasant'
		WHEN event_url LIKe '%PI' THEN 'Pioneer'
		WHEN event_url LIKE '%EDHM' THEN 'EDH Online'
		WHEN event_url LIKE '%EDHP' THEN 'EDH Peasant'
		WHEN event_url LIKE '%EDH' THEN 'Elder Dragon Highlander'
		WHEN event_url LIKE '%HIGH' THEN 'Highlander'
		WHEN event_url LIKE '%HI' THEN 'Historic'
		WHEN event_url LIKE '%CHL' THEN 'Canadian Highlander'
		WHEN event_url LIKE '%BL' THEN 'Block'
	END
WHERE "format" IS NULL;
