-- ‘O•ûˆê’vŒŸõ
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE 'ddd%';

-- ’†ŠÔˆê’vŒŸõ
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE '%ddd%';

-- Œã•ûˆê’vŒŸõ
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE '%ddd';

-- ‘O•ûˆê’vŒŸõ(”CˆÓ‚Ì•¶š”)
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE 'abc__';

SELECT	*
FROM	SampleLike
WHERE	strcol LIKE 'abc___';

-- ”ÍˆÍŒŸõ
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	hanbai_tanka BETWEEN 100 AND 1000;