-- 2-1
SELECT server, sample_date,
  SUM(load_val) OVER () AS sum_load
FROM ServerLoadSample;

-- 2-2
SELECT server, sample_date,
  SUM(load_val) OVER (PARTITION BY server) AS sum_load
FROM ServerLoadSample;