-- GROUPING関数で超集合行のため生じたNULL(=1)かどうかを判別する
SELECT	GROUPING(shohin_bunrui) AS shohin_bunrui,
		GROUPING(torokubi) AS torokubi, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY ROLLUP(shohin_bunrui, torokubi);

-- 超集合行のキー値に適当な文字列を埋め込む
SELECT	CASE	WHEN GROUPING(shohin_bunrui) = 1
				THEN '商品分類 合計'
				ELSE shohin_bunrui END AS shohin_bunrui,
		CASE	WHEN GROUPING(torokubi) = 1
				THEN '登録日 合計'
				ELSE CAST(torokubi AS VARCHAR(16)) END AS torokubi,
		SUM(hanbai_tanka) AS sum_tanka
FROM Shohin
GROUP BY ROLLUP(shohin_bunrui, torokubi);