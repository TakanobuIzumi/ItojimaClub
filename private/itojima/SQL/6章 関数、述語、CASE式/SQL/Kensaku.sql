-- �O����v����
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE 'ddd%';

-- ���Ԉ�v����
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE '%ddd%';

-- �����v����
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE '%ddd';

-- �O����v����(�C�ӂ̕�����)
SELECT	*
FROM	SampleLike
WHERE	strcol LIKE 'abc__';

SELECT	*
FROM	SampleLike
WHERE	strcol LIKE 'abc___';

-- �͈͌���
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	hanbai_tanka BETWEEN 100 AND 1000;