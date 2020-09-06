-- 8.1
SELECT	shohin_id, shohin_mei, hanbai_tanka,
		MAX(hanbai_tanka) OVER (ORDER BY shohin_id) AS current_max_tanka
FROM	Shohin;

-- 8.2
SELECT	torokubi, shohin_mei, hanbai_tanka,
		SUM(hanbai_tanka) OVER (ORDER BY COALESCE(torokubi, CAST('0001-01-01' AS DATE))) AS current_sum_tanka
FROM	Shohin;