 -- 現在の給料が30万以上の社員は、10%の減給とする
 -- 現在の給料が25万以上28万未満の社員は、20%の昇給とする
 UPDATE Salaries
	SET salary = CASE WHEN salary >= 300000
	                  THEN salary * 0.9
					  WHEN salary >= 250000 AND salary < 280000
					  THEN salary * 1.2
				 ELSE salary END;

-- 主キーaとbを入れ替える
 UPDATE SomeTable
	SET p_key = CASE WHEN p_key = 'a'
	                 THEN 'b'
					 WHEN p_key = 'b'
					 THEN 'a'
				ELSE p_key END
  WHERE p_key IN('a', 'b');