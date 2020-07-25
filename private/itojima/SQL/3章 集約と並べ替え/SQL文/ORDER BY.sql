-- 販売単価を昇順で並び替える(ASCは省略可能)
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka ASC;

-- 販売単価を降順で並び替える
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka DESC;

-- 販売単価と商品IDの昇順で並び替える
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka, shohin_id;

-- 仕入単価の昇順で並び替える(NULLは先頭または末尾にまとめて表示される)
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY shiire_tanka;