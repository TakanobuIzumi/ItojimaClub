-- NULLÇ©Ç«Ç§Ç©ÇÃîªíË
SELECT	shohin_mei, shiire_tanka
FROM	Shohin
WHERE	shiire_tanka IS NULL;

SELECT	shohin_mei, shiire_tanka
FROM	Shohin
WHERE	shiire_tanka IS NOT NULL;

-- INèqåÍ
SELECT	shohin_mei, shiire_tanka
FROM	Shohin
WHERE	shiire_tanka = 320
	OR	shiire_tanka = 500
	OR	shiire_tanka = 5000;

SELECT	shohin_mei, shiire_tanka
FROM	Shohin
WHERE	shiire_tanka IN (320, 500, 5000);

SELECT	shohin_mei, shiire_tanka
FROM	Shohin
WHERE	shiire_tanka NOT IN (320, 500, 5000);