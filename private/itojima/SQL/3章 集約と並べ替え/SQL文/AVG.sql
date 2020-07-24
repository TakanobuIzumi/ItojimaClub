-- 販売単価の平均値
SELECT AVG(hanbai_tanka)
FROM Shohin;

-- 販売単価と仕入単価の平均値
SELECT AVG(hanbai_tanka), AVG(shiire_tanka)
FROM Shohin;