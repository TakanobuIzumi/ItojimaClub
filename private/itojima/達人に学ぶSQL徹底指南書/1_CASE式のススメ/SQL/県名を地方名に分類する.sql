-- ������n�����ɕ��ނ���
SELECT	CASE pref_name
			WHEN '����' THEN '�l��'
			WHEN '����' THEN '�l��'
			WHEN '���Q' THEN '�l��'
			WHEN '���m' THEN '�l��'
			WHEN '����' THEN '��B'
			WHEN '����' THEN '��B'
			WHEN '����' THEN '��B'
			ELSE '���̑�' END AS district,
			SUM(population)
FROM PopTbl
GROUP BY CASE pref_name
			WHEN '����' THEN '�l��'
			WHEN '����' THEN '�l��'
			WHEN '���Q' THEN '�l��'
			WHEN '���m' THEN '�l��'
			WHEN '����' THEN '��B'
			WHEN '����' THEN '��B'
			WHEN '����' THEN '��B'
			ELSE '���̑�' END;