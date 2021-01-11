-- ���߂̓��t�����߂�
SELECT sample_date AS cur_date,
       MIN(sample_date)
	     OVER (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date
FROM LoadSample;

-- ���߂̓��t�A���חʂ����߂�
SELECT sample_date AS cur_date,
       load_val AS cur_load,
       MIN(sample_date)
	     OVER (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date,
       MIN(load_val)
	     OVER (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_load
FROM LoadSample;

-- ���߂̓��t�A���חʂ����߂�(�E�B���h�E�\���ł܂Ƃ߂�)
SELECT sample_date AS cur_date,
       load_val AS cur_load,
       MIN(sample_date) OVER W AS latest_date,
       MIN(load_val) OVER W AS latest_load
FROM LoadSample
WINDOW W AS (ORDER BY sample_date ASC
		       ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING);