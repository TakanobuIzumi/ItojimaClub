-- テーブルの共通部分の選択
SELECT shohin_id, shohin_mei
FROM	Shohin
INTERSECT
SELECT shohin_id, shohin_mei
FROM	Shohin2;