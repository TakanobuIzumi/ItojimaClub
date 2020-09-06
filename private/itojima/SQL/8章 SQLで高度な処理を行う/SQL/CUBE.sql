-- CUBEで可能なすべての組み合わせを取得する
SELECT	CASE	WHEN GROUPING(shohin_bunrui) = 1
				THEN '商品分類 合計'
				ELSE shohin_bunrui END AS shohin_bunrui,
		CASE	WHEN GROUPING(torokubi) = 1
				THEN '登録日 合計'
				ELSE CAST(torokubi AS VARCHAR(16)) END AS torokubi,
		SUM(hanbai_tanka) AS sum_tanka
FROM Shohin
GROUP BY CUBE(shohin_bunrui, torokubi);

-- GROUPING SETSで部分的な組み合わせを習得する
SELECT	CASE	WHEN GROUPING(shohin_bunrui) = 1
				THEN '商品分類 合計'
				ELSE shohin_bunrui END AS shohin_bunrui,
		CASE	WHEN GROUPING(torokubi) = 1
				THEN '登録日 合計'
				ELSE CAST(torokubi AS VARCHAR(16)) END AS torokubi,
		SUM(hanbai_tanka) AS sum_tanka
FROM Shohin
GROUP BY GROUPING SETS(shohin_bunrui, torokubi);