-- ���X(000C)�ɂ����Ă��鏤�i�̔̔��P�������߂�
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	shohin_id IN (
					SELECT	shohin_id
					FROM	TenpoShohin
					WHERE	tenpo_id = '000C');

-- �����X(000A)�ɂ����Ă��鏤�i�ȊO�̔̔��P�������߂�
SELECT	shohin_mei, hanbai_tanka
FROM	Shohin
WHERE	shohin_id NOT IN (
					SELECT	shohin_id
					FROM	TenpoShohin
					WHERE	tenpo_id = '000A');