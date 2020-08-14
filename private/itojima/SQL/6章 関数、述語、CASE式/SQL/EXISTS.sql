-- EXISTSで大阪店(000C)においてある商品の販売単価を求める
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin AS S
WHERE	EXISTS (
			SELECT	*
			FROM	TenpoShohin AS TS
			WHERE	TS.tenpo_id = '000C' AND TS.shohin_id = S.shohin_id);

-- EXISTSで東京店(000A)においてある商品以外の販売単価を求める
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin AS S
WHERE	NOT EXISTS (
			SELECT	*
			FROM	TenpoShohin AS TS
			WHERE	TS.tenpo_id = '000A' AND TS.shohin_id = S.shohin_id);