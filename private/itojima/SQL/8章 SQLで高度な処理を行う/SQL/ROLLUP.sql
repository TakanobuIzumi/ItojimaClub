-- ���v�s�ƏW�񌋉ʂ��ʂɋ���UNION ALL�ł�������
SELECT	'���v' AS shohin_bunrui, SUM(hanbai_tanka) AS sum
FROM	Shohin
UNION ALL
SELECT	shohin_bunrui, SUM(hanbai_tanka) AS sum
FROM	Shohin
GROUP BY shohin_bunrui;

-- ROLLUP�ō��v�s�Ə��v����x�ɋ��߂�
SELECT	shohin_bunrui, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY ROLLUP(shohin_bunrui);

-- GROUP BY�Łu�o�^���v��ǉ�(ROLLUP�Ȃ�)
SELECT	shohin_bunrui, torokubi, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY shohin_bunrui, torokubi;

-- GROUP BY�Łu�o�^���v��ǉ�(ROLLUP����)
SELECT	shohin_bunrui, torokubi, SUM(hanbai_tanka) AS sum_tanka
FROM	Shohin
GROUP BY ROLLUP(shohin_bunrui, torokubi);