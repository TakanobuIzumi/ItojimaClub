-- レコードの引き算
SELECT shohin_id, shohin_mei
FROM	Shohin
EXCEPT
SELECT shohin_id, shohin_mei
FROM	Shohin2;

-- レコードの引き算
SELECT shohin_id, shohin_mei
FROM	Shohin2
EXCEPT
SELECT shohin_id, shohin_mei
FROM	Shohin;