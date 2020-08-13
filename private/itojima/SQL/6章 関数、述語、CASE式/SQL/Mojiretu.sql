-- 文字連結(||はSQLServerでは使用不可のため失敗する)
SELECT	str1, str2,
		--str1 || str2 AS str_concat
		str1 + str2 AS str_concat
FROM	SampleStr;

-- 文字連結(SQLServerではCONCAT関数を使用できる)
SELECT	str1, str2,
		--str1 || str2 AS str_concat
		CONCAT(str1, str2) AS str_concat
FROM	SampleStr;

-- 文字列長取得(LENGTHはSQLServerでは使用不可のため失敗する)
SELECT	str1,
		--LENGTH(str1) AS len_str
		LEN(str1) AS len_str
FROM	SampleStr;

-- 小文字化
SELECT	str1,
		LOWER(str1) AS low_str
FROM	SampleStr
WHERE	str1 IN ('ABC', 'aBC', 'abc', '山田');

-- 大文字化
SELECT	str1,
		UPPER(str1) AS up_str
FROM	SampleStr
WHERE	str1 IN ('ABC', 'aBC', 'abc', '山田');

-- 文字列の置換
SELECT	str1, str2, str3,
		REPLACE(str1, str2, str3) AS rep_str
FROM	SampleStr;

-- 文字列の切り出し
SELECT	str1,
		SUBSTRING(str1, 3, 2) AS sub_str
FROM	SampleStr;