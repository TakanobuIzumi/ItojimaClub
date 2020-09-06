-- 販売単価の合計値(累計)を求める
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	SUM (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_sum
FROM Shohin;

-- 販売単価の平均値を求める
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	AVG (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_avg
FROM Shohin;

-- 集計対象のレコードを直近の3行にする(移動平均)
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	AVG (hanbai_tanka) OVER (	ORDER BY shohin_id
								ROWS 2 PRECEDING) AS moving_avg
FROM Shohin;

-- カレントレコードの前後の行を集計対象に含める
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	AVG (hanbai_tanka) OVER (	ORDER BY shohin_id
								ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS moving_avg
FROM Shohin;