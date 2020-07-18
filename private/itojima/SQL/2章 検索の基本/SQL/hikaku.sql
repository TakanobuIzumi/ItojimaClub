--”äŠr‰‰ŽZ
SELECT	shohin_mei, shohin_bunrui
FROM	Shohin
WHERE	hanbai_tanka <> 500;

SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
WHERE	hanbai_tanka - shiire_tanka >=500;