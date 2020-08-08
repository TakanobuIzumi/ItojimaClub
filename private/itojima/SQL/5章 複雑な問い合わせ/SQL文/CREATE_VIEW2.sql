-- ShohinSumJimビュー作成(ビューからビューを作成)
CREATE VIEW ShohinSumJim (shohin_bunrui, cnt_shohin)
AS
SELECT		shohin_bunrui, cnt_shohin
FROM		ShohinSum
WHERE		shohin_bunrui = '事務用品';