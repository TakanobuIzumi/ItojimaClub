-- Œ^•ÏŠ·
-- •¶Žš—ñ¨”’l
SELECT CAST('0001' AS INTEGER) AS int_col;

-- •¶Žš—ñ¨“ú•t
SELECT CAST('2009-12-14' AS DATE) AS date_col;

-- NULL‚ð’l‚Ö•ÏŠ·
SELECT	COALESCE(NULL, 1)					AS col_1,
		COALESCE(NULL, 'test', NULL)		AS col_2,
		COALESCE(NULL, NULL, '2009-11-01')	AS col_3;

-- str2—ñ‚ÌNULL‚ð•ÏŠ·
SELECT	COALESCE(str2, 'NULL‚Å‚·')
FROM	SampleStr;