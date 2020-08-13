-- 数値の絶対値を求める
SELECT	m,
		ABS(m) AS abs_col
FROM	SampleMath;

-- 剰余を求める(MODはSQLServerでは使用不可のため失敗する)
SELECT	n, p,
		--MOD(n, p) AS mod_col
		n % p AS mod_col
FROM	SampleMath;

-- 四捨五入
SELECT	m, n,
		ROUND(m, n) AS round_col
FROM	SampleMath;