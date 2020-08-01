CREATE TABLE ShohinBunrui
(shohin_bunrui VARCHAR(32) NOT NULL,
 sum_hanbai_tanka INTEGER,
 sum_shiire_tanka INTEGER,
 PRIMARY KEY (shohin_bunrui));

-- Shohin→ShohinBunruiへデータをコピー
INSERT INTO ShohinBunrui
(shohin_bunrui,	sum_hanbai_tanka,	sum_shiire_tanka)
SELECT
shohin_bunrui,	SUM(hanbai_tanka),	SUM(shiire_tanka)
FROM Shohin
GROUP BY shohin_bunrui;