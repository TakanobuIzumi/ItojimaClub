-- �o�^�������ׂĕύX
UPDATE Shohin
SET torokubi = '2009-10-10';

-- �ꕔ�̍s������ύX����
UPDATE	Shohin
SET		hanbai_tanka = hanbai_tanka * 10
WHERE	shohin_bunrui = '�L�b�`���p�i';

-- NULL�ōX�V
UPDATE	Shohin
SET		torokubi = NULL
WHERE	shohin_id = '0008';

-- ������̍X�V
UPDATE	Shohin
SET		hanbai_tanka = hanbai_tanka * 10,
		shiire_tanka = shiire_tanka / 2
WHERE	shohin_bunrui = '�L�b�`���p�i';