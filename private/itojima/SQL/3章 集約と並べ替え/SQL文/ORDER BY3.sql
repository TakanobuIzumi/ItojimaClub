-- ORDER BY句を列名で指定
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka DESC, shohin_id;

-- ORDER BY句を列番号で指定
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY 3 DESC, 1;

-- 上記はどちらも同様の結果となるが、列番号指定は可読性の面で問題があり、
-- また、将来削除されるべき機能に挙げられているため、使用しないほうが良い