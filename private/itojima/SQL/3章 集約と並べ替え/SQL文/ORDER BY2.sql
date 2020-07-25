-- ORDER BYでは、SELECT句でつけた別名を利用できる
SELECT	shohin_id AS id, shohin_mei, hanbai_tanka AS ht, shiire_tanka
FROM	Shohin
ORDER BY ht, id;

-- SELECT句に含まれていない列もORDER BYに指定できる
SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY shohin_id;

-- 集約関数も使える
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
ORDER BY COUNT(*);