-- EXISTS�ő��X(000C)�ɂ����Ă��鏤�i�̔̔��P�������߂�
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin AS S
WHERE	EXISTS (
			SELECT	*
			FROM	TenpoShohin AS TS
			WHERE	TS.tenpo_id = '000C' AND TS.shohin_id = S.shohin_id);

-- EXISTS�œ����X(000A)�ɂ����Ă��鏤�i�ȊO�̔̔��P�������߂�
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin AS S
WHERE	NOT EXISTS (
			SELECT	*
			FROM	TenpoShohin AS TS
			WHERE	TS.tenpo_id = '000A' AND TS.shohin_id = S.shohin_id);