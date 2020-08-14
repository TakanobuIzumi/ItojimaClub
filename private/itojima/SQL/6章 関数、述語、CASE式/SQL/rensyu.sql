-- 6.1
-- ‡@
-- shohin_mei		|	shiire_tanka
------------------------------------
-- ŒŠ‚ ‚¯ƒpƒ“ƒ`		|	320
-- ‚¨‚ë‚µ‚ª‚Ë		|	790

-- ‡A
-- shohin_mei		|	shiire_tanka
------------------------------------

-- 6.2
SELECT	SUM(CASE
				WHEN	hanbai_tanka <= 1000				THEN 1 	ELSE	0
			END) AS low_price,
		SUM(CASE
				WHEN	hanbai_tanka BETWEEN 1001 AND 3000	THEN 1 	ELSE	0
			END) AS mid_price,
		SUM(CASE
				WHEN	hanbai_tanka >= 3001				THEN 1 	ELSE	0
			END) AS high_price
FROM	Shohin;