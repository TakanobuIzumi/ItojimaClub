-- �̔��P���̍��v�l(�݌v)�����߂�
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	SUM (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_sum
FROM Shohin;

-- �̔��P���̕��ϒl�����߂�
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	AVG (hanbai_tanka) OVER (ORDER BY shohin_id) AS current_avg
FROM Shohin;

-- �W�v�Ώۂ̃��R�[�h�𒼋߂�3�s�ɂ���(�ړ�����)
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	AVG (hanbai_tanka) OVER (	ORDER BY shohin_id
								ROWS 2 PRECEDING) AS moving_avg
FROM Shohin;

-- �J�����g���R�[�h�̑O��̍s���W�v�ΏۂɊ܂߂�
SELECT	shohin_id, shohin_mei, hanbai_tanka,
	AVG (hanbai_tanka) OVER (	ORDER BY shohin_id
								ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS moving_avg
FROM Shohin;