-- �W�����Z
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION
SELECT shohin_id, shohin_mei
FROM	Shohin2;

-- �񐔂��s��v�̂��߃G���[
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION
SELECT shohin_id, shohin_mei, hanbai_tanka
FROM	Shohin2;

-- �f�[�^�^���s��v�̂��߃G���[
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION
SELECT shohin_id, torokubi
FROM	Shohin2;

-- SELECT���ɂ͂ǂ�Ȃ��̂��w�肵�Ă�����
-- ������ORDER BY��͈����
SELECT shohin_id, shohin_mei
FROM	Shohin
WHERE	shohin_bunrui = '�L�b�`���p�i'
UNION
SELECT shohin_id, shohin_mei
FROM	Shohin2
WHERE	shohin_bunrui = '�L�b�`���p�i'
ORDER BY shohin_id;

-- �d���s���c��ALL�I�v�V����
SELECT shohin_id, shohin_mei
FROM	Shohin
UNION ALL
SELECT shohin_id, shohin_mei
FROM	Shohin2;