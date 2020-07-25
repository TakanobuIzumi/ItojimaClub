-- 商品テーブルを商品分類でグループ化し、衣類が含まれるレコードを選択
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING shohin_bunrui = '衣類';

-- 商品テーブルの商品分類列が衣類のレコードを、商品分類でグループ化
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
WHERE	shohin_bunrui = '衣類'
GROUP BY shohin_bunrui;

-- 実行結果は同じとなるが、WHERE句を使用するほうがレコードを絞り込んでからグループ化するため、
-- 実装速度はWHERE句を使うほうが早い