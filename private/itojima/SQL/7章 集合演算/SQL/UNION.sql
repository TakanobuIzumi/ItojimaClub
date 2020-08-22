-- 集合演算
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION
SELECT shohin_id, shohin_mei
FROM	Shohin2;

-- 列数が不一致のためエラー
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION
SELECT shohin_id, shohin_mei, hanbai_tanka
FROM	Shohin2;

-- データ型が不一致のためエラー
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION
SELECT shohin_id, torokubi
FROM	Shohin2;

-- SELECT文にはどんなものを指定してもいい
-- ただしORDER BY句は一つだけ
SELECT shohin_id, shohin_mei
FROM	Shohin
WHERE	shohin_bunrui = 'キッチン用品'
UNION
SELECT shohin_id, shohin_mei
FROM	Shohin2
WHERE	shohin_bunrui = 'キッチン用品'
ORDER BY shohin_id;

-- 重複行を残すALLオプション
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION ALL
SELECT shohin_id, shohin_mei
FROM	Shohin2;