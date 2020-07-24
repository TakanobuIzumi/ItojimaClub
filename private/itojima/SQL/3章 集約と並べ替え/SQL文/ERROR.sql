-- 【エラー】GROUP BY句を使うときは、SELECT句に集約キー以外の列名を書けない
SELECT	shohin_mei, shiire_tanka, COUNT(*)
FROM	Shohin
GROUP BY shiire_tanka;

-- 【エラー】GROUP BY句にSELECT句で付けた別名は使えない
SELECT	shohin_bunrui AS sb, COUNT(*)
FROM	Shohin
GROUP BY sb;