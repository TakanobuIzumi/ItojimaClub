-- �����A��(||��SQLServer�ł͎g�p�s�̂��ߎ��s����)
SELECT	str1, str2,
		--str1 || str2 AS str_concat
		str1 + str2 AS str_concat
FROM	SampleStr;

-- �����A��(SQLServer�ł�CONCAT�֐����g�p�ł���)
SELECT	str1, str2,
		--str1 || str2 AS str_concat
		CONCAT(str1, str2) AS str_concat
FROM	SampleStr;

-- �����񒷎擾(LENGTH��SQLServer�ł͎g�p�s�̂��ߎ��s����)
SELECT	str1,
		--LENGTH(str1) AS len_str
		LEN(str1) AS len_str
FROM	SampleStr;

-- ��������
SELECT	str1,
		LOWER(str1) AS low_str
FROM	SampleStr
WHERE	str1 IN ('ABC', 'aBC', 'abc', '�R�c');

-- �啶����
SELECT	str1,
		UPPER(str1) AS up_str
FROM	SampleStr
WHERE	str1 IN ('ABC', 'aBC', 'abc', '�R�c');

-- ������̒u��
SELECT	str1, str2, str3,
		REPLACE(str1, str2, str3) AS rep_str
FROM	SampleStr;

-- ������̐؂�o��
SELECT	str1,
		SUBSTRING(str1, 3, 2) AS sub_str
FROM	SampleStr;