-- ShohinJimビュー作成(更新できるビュー)
CREATE VIEW ShohinJim (shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi)
AS
SELECT	*
FROM	Shohin
WHERE	shohin_bunrui = '事務用品';

-- ビューに行を追加
INSERT INTO ShohinJim VALUES ('0009', '印鑑', '事務用品', 95, 10, '2009-11-30');