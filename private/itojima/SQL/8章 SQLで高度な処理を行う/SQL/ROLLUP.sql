-- 合計行と集約結果を個別に求めUNION ALLでくっつける
SELECT	'合計' AS shohin_bunrui, SUM(hanbai_tanka) AS sum
FROM	Shohin
UNION ALL
SELECT	shohin_bunrui, SUM(hanbai_tanka) AS sum
FROM	Shohin
GROUP BY shohin_bunrui;

-- ROLLUPで合計行と小計を一度に求める
SELECT	shohin_bunrui, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY ROLLUP(shohin_bunrui);

-- GROUP BYで「登録日」を追加(ROLLUPなし)
SELECT	shohin_bunrui, torokubi, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY shohin_bunrui, torokubi;

-- GROUP BYで「登録日」を追加(ROLLUPあり)
SELECT	shohin_bunrui, torokubi, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY ROLLUP(shohin_bunrui, torokubi);