-- 商品分類で集約したグループから含まれる行数が2行のもの
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING COUNT(*) = 2;

-- 商品分類で集約したグループから販売単価の平均が2500以上のもの
SELECT	shohin_bunrui, AVG(hanbai_tanka)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING AVG(hanbai_tanka) >= 2500;