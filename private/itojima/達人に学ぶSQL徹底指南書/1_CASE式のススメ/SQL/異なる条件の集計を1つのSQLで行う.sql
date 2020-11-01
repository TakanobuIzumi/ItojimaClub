-- 男性の人口
SELECT	pref_name,
		population
FROM	PopTbl2
WHERE	sex = 1;

-- 女性の人口
SELECT	pref_name,
		population
FROM	PopTbl2
WHERE	sex = 2;

-- CASE式を使用する
SELECT	pref_name,
		-- 男性の人口
		SUM( CASE WHEN sex = '1' THEN population ELSE 0 END) AS cnt_m,
		-- 女性の人口
		SUM( CASE WHEN sex = '2' THEN population ELSE 0 END) AS cnt_f
FROM	PopTbl2
GROUP BY pref_name;