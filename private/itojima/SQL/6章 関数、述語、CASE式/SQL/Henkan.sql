-- �^�ϊ�
-- �����񁨐��l
SELECT CAST('0001' AS INTEGER) AS int_col;

-- �����񁨓��t
SELECT CAST('2009-12-14' AS DATE) AS date_col;

-- NULL��l�֕ϊ�
SELECT	COALESCE(NULL, 1)					AS col_1,
		COALESCE(NULL, 'test', NULL)		AS col_2,
		COALESCE(NULL, NULL, '2009-11-01')	AS col_3;

-- str2���NULL��ϊ�
SELECT	COALESCE(str2, 'NULL�ł�')
FROM	SampleStr;