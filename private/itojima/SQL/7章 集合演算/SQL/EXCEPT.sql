-- ���R�[�h�̈����Z
SELECT shohin_id, shohin_mei
FROM	Shohin
EXCEPT
SELECT shohin_id, shohin_mei
FROM	Shohin2;

-- ���R�[�h�̈����Z
SELECT shohin_id, shohin_mei
FROM	Shohin2
EXCEPT
SELECT shohin_id, shohin_mei
FROM	Shohin;