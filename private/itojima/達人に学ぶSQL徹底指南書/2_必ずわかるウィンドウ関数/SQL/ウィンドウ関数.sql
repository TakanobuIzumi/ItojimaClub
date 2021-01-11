-- �����E�B���h�E�֐�
SELECT shohin_id, shohin_mei, hanbai_tanka,
 AVG (hanbai_tanka) OVER (ORDER BY shohin_id
                          ROWS BETWEEN 2 PRECEDING
						           AND CURRENT ROW) AS moving_avg
FROM Shohin;

-- ���O�t���E�B���h�E�֐�
SELECT shohin_id, shohin_mei, hanbai_tanka,
 AVG (hanbai_tanka) OVER W AS moving_avg
FROM Shohin
WINDOW W AS (ORDER BY shohin_id
                          ROWS BETWEEN 2 PRECEDING
						           AND CURRENT ROW);

-- ���O�t���E�B���h�E�\���ł́A�E�B���h�E�̎g���܂킵���\
SELECT shohin_id, shohin_mei, hanbai_tanka,
 AVG (hanbai_tanka) OVER W AS moving_avg,
 SUM (hanbai_tanka) OVER W AS moving_avg,
 COUNT (hanbai_tanka) OVER W AS moving_avg,
 MAX (hanbai_tanka) OVER W AS moving_avg
FROM Shohin
WINDOW W AS (ORDER BY shohin_id
                          ROWS BETWEEN 2 PRECEDING
						           AND CURRENT ROW);