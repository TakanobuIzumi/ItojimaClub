-- �j���̐l��
SELECT	pref_name,
		population
FROM	PopTbl2
WHERE	sex = 1;

-- �����̐l��
SELECT	pref_name,
		population
FROM	PopTbl2
WHERE	sex = 2;

-- CASE�����g�p����
SELECT	pref_name,
		-- �j���̐l��
		SUM( CASE WHEN sex = '1' THEN population ELSE 0 END) AS cnt_m,
		-- �����̐l��
		SUM( CASE WHEN sex = '2' THEN population ELSE 0 END) AS cnt_f
FROM	PopTbl2
GROUP BY pref_name;