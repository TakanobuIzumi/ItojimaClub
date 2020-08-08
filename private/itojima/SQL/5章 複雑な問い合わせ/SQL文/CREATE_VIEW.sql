-- ShohinSumビュー作成
CREATE VIEW ShohinSum (shohin_bunrui, cnt_shohin)	/* ビューの列名 */
AS
SELECT		shohin_bunrui, COUNT(*)
FROM		Shohin
GROUP BY	shohin_bunrui;