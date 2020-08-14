-- 大阪店(000C)においてある商品の販売単価を求める
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	shohin_id IN (
					SELECT	shohin_id
					FROM	TenpoShohin
					WHERE	tenpo_id = '000C');

-- 東京店(000A)においてある商品以外の販売単価を求める
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	shohin_id NOT IN (
					SELECT	shohin_id
					FROM	TenpoShohin
					WHERE	tenpo_id = '000A');