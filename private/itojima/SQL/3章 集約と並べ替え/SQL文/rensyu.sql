-- 3.1
SELECT	shohin_id, SUM(shohin_mei)
FROM	Shohin
GROUP BY shohin_bunrui
WHERE torokubi > '2009-09-01';
-- SUM�𕶎���^�̗�Ɏg�p���Ă���
-- GROUP BY�Ŏg�p���Ă��Ȃ��񖼂�SELECT�Ŏw�肵�Ă���
-- WHERE��GROUP BY�̏������t

-- 3.2
SELECT	shohin_bunrui, SUM(hanbai_tanka) AS sum, SUM(shiire_tanka) AS sum
FROM	Shohin
GROUP BY shohin_bunrui
HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;

-- 3.3
SELECT	*
FROM	Shohin
ORDER BY torokubi DESC, shiire_tanka;