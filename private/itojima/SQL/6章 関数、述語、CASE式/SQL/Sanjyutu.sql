-- ���l�̐�Βl�����߂�
SELECT	m,
		ABS(m) AS abs_col
FROM	SampleMath;

-- ��]�����߂�(MOD��SQLServer�ł͎g�p�s�̂��ߎ��s����)
SELECT	n, p,
		--MOD(n, p) AS mod_col
		n % p AS mod_col
FROM	SampleMath;

-- �l�̌ܓ�
SELECT	m, n,
		ROUND(m, n) AS round_col
FROM	SampleMath;