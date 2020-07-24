-- 商品分類ごとの行を数える
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui;

-- 仕入単価ごとの行を数える(集約キーにNULLが含まれる場合)
SELECT	shiire_tanka, COUNT(*)
FROM	Shohin
GROUP BY shiire_tanka;

-- 仕入単価ごとの行を数える(集約キーにNULLが含まれる場合)
SELECT	shiire_tanka, COUNT(*)
FROM	Shohin
WHERE	shohin_bunrui = '衣類'
GROUP BY shiire_tanka;