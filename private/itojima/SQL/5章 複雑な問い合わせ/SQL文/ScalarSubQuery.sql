-- スカラ・サブクエリ
SELECT	shohin_id, shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	hanbai_tanka > (
			SELECT	AVG(hanbai_tanka)
			FROM	Shohin);

SELECT	shohin_id, shohin_mei, hanbai_tanka,
		(SELECT	AVG(hanbai_tanka)	FROM Shohin) AS avg_tanka
FROM	Shohin;

SELECT		shohin_bunrui, AVG(hanbai_tanka)
FROM		Shohin
GROUP BY	shohin_bunrui
HAVING AVG(hanbai_tanka) > (
			SELECT	AVG(hanbai_tanka)
			FROM	Shohin);