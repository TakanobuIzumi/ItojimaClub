-- 7.1
-- Shohin�e�[�u���̓��e�ƕς��Ȃ�
SELECT	*
FROM	Shohin
UNION
SELECT	*
FROM	Shohin
INTERSECT
SELECT	*
FROM	Shohin
ORDER BY	shohin_id;

-- 7.2
SELECT	COALESCE(TS.tenpo_id, '�s��') AS tenpo_id, COALESCE(TS.tenpo_mei, '�s��') AS tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka
FROM	TenpoShohin AS TS 
		RIGHT OUTER JOIN 
		Shohin AS S
		ON TS.shohin_id = S.shohin_id
		ORDER BY tenpo_id;