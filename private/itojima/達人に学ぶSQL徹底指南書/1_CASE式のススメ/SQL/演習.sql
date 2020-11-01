-- 1-1
SELECT key_,
       CASE WHEN x > y THEN x
	   ELSE y END AS greatest
  FROM Greatests;

SELECT key_,
       CASE WHEN 
	    CASE WHEN x < y THEN y ELSE x END < z
	   THEN z
	   ELSE 
	    CASE WHEN x < y THEN y ELSE x END
	   END AS greatest
  FROM Greatests;

-- 1-2
-- CASEŽ®‚ðŽg—p‚·‚é
SELECT	sex,
        SUM(population) AS total,
		SUM( CASE WHEN pref_name = '“¿“‡' THEN population ELSE 0 END) AS tokushima,
		SUM( CASE WHEN pref_name = 'ì' THEN population ELSE 0 END) AS kagawa,
		SUM( CASE WHEN pref_name = 'ˆ¤•Q' THEN population ELSE 0 END) AS ehime,
		SUM( CASE WHEN pref_name = '‚’m' THEN population ELSE 0 END) AS kouti,
		SUM( CASE WHEN pref_name IN ('“¿“‡', 'ì', 'ˆ¤•Q', '‚’m') THEN population ELSE 0 END) AS shikoku
FROM	PopTbl2
GROUP BY sex;

-- 1-3
SELECT key_
  FROM Greatests
ORDER BY CASE key_
           WHEN 'B' THEN 1
		   WHEN 'A' THEN 2
		   WHEN 'D' THEN 3
		   WHEN 'C' THEN 4
		   ELSE NULL END;