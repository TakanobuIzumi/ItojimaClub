-- レコードのランキングを算出
-- 商品分類別に、販売単価の安い順で並べたランキング表を作る
SELECT	shohin_mei, shohin_bunrui, hanbai_tanka,
	RANK () OVER (	PARTITION BY shohin_bunrui
					ORDER BY hanbai_tanka) AS ranking
FROM Shohin;

-- 販売単価の安い順で並べたランキング表を作る
SELECT	shohin_mei, shohin_bunrui, hanbai_tanka,
	RANK () OVER (	ORDER BY hanbai_tanka) AS ranking,
	DENSE_RANK () OVER (	ORDER BY hanbai_tanka) AS dense_ranking,
	ROW_NUMBER () OVER (	ORDER BY hanbai_tanka) AS row_num
FROM Shohin;