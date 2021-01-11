-- 直近の日付を求める
SELECT sample_date AS cur_date,
       MIN(sample_date)
	     OVER (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date
FROM LoadSample;

-- 直近の日付、負荷量を求める
SELECT sample_date AS cur_date,
       load_val AS cur_load,
       MIN(sample_date)
	     OVER (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date,
       MIN(load_val)
	     OVER (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_load
FROM LoadSample;

-- 直近の日付、負荷量を求める(ウィンドウ構文でまとめる)
SELECT sample_date AS cur_date,
       load_val AS cur_load,
       MIN(sample_date) OVER W AS latest_date,
       MIN(load_val) OVER W AS latest_load
FROM LoadSample
WINDOW W AS (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING);