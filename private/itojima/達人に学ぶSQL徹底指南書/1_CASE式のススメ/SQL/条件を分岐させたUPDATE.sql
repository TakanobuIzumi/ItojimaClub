 -- ���݂̋�����30���ȏ�̎Ј��́A10%�̌����Ƃ���
 -- ���݂̋�����25���ȏ�28�������̎Ј��́A20%�̏����Ƃ���
 UPDATE Salaries
	SET salary = CASE WHEN salary >= 300000
	                  THEN salary * 0.9
					  WHEN salary >= 250000 AND salary < 280000
					  THEN salary * 1.2
				 ELSE salary END;

-- ��L�[a��b�����ւ���
 UPDATE SomeTable
	SET p_key = CASE WHEN p_key = 'a'
	                 THEN 'b'
					 WHEN p_key = 'b'
					 THEN 'a'
				ELSE p_key END
  WHERE p_key IN('a', 'b');