-- 販売単価の合計
SELECT SUM(hanbai_tanka)
FROM Shohin;

-- 販売単価と仕入単価の合計
SELECT SUM(hanbai_tanka), SUM(shiire_tanka)
FROM Shohin;

-- 販売単価と仕入単価の合計(重複除外する)
SELECT SUM(hanbai_tanka), SUM(DISTINCT hanbai_tanka)
FROM Shohin;