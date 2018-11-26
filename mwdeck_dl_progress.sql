CREATE TEMP TABLE IF NOT EXISTS prog_log (done int, remaining int, pct_done NUMERIC, ts timestamp);

INSERT INTO prog_log
SELECT
	SUM(CASE WHEN cards IS NOT NULL THEN 1 ELSE 0 END) done,
	COUNT(*) - SUM(CASE WHEN cards IS NOT NULL THEN 1 ELSE 0 END) remaining,
	CASE WHEN COUNT(*) <> 0
         THEN SUM(CASE WHEN cards IS NOT NULL THEN 1.0 ELSE 0 END) / COUNT(*)
         ELSE 0
    END pct_done,
    CURRENT_TIMESTAMP ts
FROM mtg.tournament_decks;

SELECT * FROM prog_log;