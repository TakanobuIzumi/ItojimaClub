-- 【エラー】GROUP BYに含まれない列はHAVINGに書けない
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING shohin_mei = 'ボールペン';