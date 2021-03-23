UPDATE mtg.deck_stats ds
SET mana_average = CASE
		WHEN main - land = 0 THEN 0
		ELSE (
			(
				"0.5" * 0.5 + "1" + "2" * 2 + "3" * 3 + "4" * 4 + "5" * 5 + "6" * 6 + "7" * 7 + "8" * 8 + "9" * 9 + "10" * 10 + "11" * 11 + "12" * 12 + "13" * 13 + "14" * 14 + "15" * 15 + "16" * 16 + "1000000" * 1000000
			)::DOUBLE PRECISION / (main - land)::DOUBLE PRECISION
		)
	END
FROM mtg.cmcs c
	JOIN mtg."types" t ON c.deck_url = t.deck_url
WHERE ds.deck_url = c.deck_url;
