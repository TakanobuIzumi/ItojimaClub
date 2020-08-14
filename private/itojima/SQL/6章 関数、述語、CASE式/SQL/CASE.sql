-- CASE式で商品分類にA〜Cの文字列を割り当てる(検索CASE式)
SELECT	shohin_mei,
		CASE
			WHEN	shohin_bunrui = '衣服'			THEN	'A：' + shohin_bunrui
			WHEN	shohin_bunrui = '事務用品'		THEN	'B：' + shohin_bunrui
			WHEN	shohin_bunrui = 'キッチン用品'	THEN	'C：' + shohin_bunrui
			ELSE	NULL
		END	AS	abc_shohin_bunrui
FROM	Shohin;

-- CASE式で商品分類にA〜Cの文字列を割り当てる(単純CASE式)
SELECT	shohin_mei,
		CASE	shohin_bunrui
			WHEN	'衣服'			THEN	'A：' + shohin_bunrui
			WHEN	'事務用品'		THEN	'B：' + shohin_bunrui
			WHEN	'キッチン用品'	THEN	'C：' + shohin_bunrui
			ELSE	NULL
		END	AS	abc_shohin_bunrui
FROM	Shohin;

-- 商品分類ごとに販売単価を合計した結果を行列変換する
SELECT	SUM(CASE
				WHEN	shohin_bunrui = '衣服'			THEN hanbai_tanka
				ELSE	0
			END) AS sum_tanka_ihuku,
		SUM(CASE
				WHEN	shohin_bunrui = 'キッチン用品'	THEN hanbai_tanka
				ELSE	0
			END) AS sum_tanka_kitchen,
		SUM(CASE
				WHEN	shohin_bunrui = '事務用品'		THEN hanbai_tanka
				ELSE	0
			END) AS sum_tanka_jimu
FROM	Shohin;