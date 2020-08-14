-- CASE���ŏ��i���ނ�A�`C�̕���������蓖�Ă�(����CASE��)
SELECT	shohin_mei,
		CASE
			WHEN	shohin_bunrui = '�ߕ�'			THEN	'A�F' + shohin_bunrui
			WHEN	shohin_bunrui = '�����p�i'		THEN	'B�F' + shohin_bunrui
			WHEN	shohin_bunrui = '�L�b�`���p�i'	THEN	'C�F' + shohin_bunrui
			ELSE	NULL
		END	AS	abc_shohin_bunrui
FROM	Shohin;

-- CASE���ŏ��i���ނ�A�`C�̕���������蓖�Ă�(�P��CASE��)
SELECT	shohin_mei,
		CASE	shohin_bunrui
			WHEN	'�ߕ�'			THEN	'A�F' + shohin_bunrui
			WHEN	'�����p�i'		THEN	'B�F' + shohin_bunrui
			WHEN	'�L�b�`���p�i'	THEN	'C�F' + shohin_bunrui
			ELSE	NULL
		END	AS	abc_shohin_bunrui
FROM	Shohin;

-- ���i���ނ��Ƃɔ̔��P�������v�������ʂ��s��ϊ�����
SELECT	SUM(CASE
				WHEN	shohin_bunrui = '�ߕ�'			THEN hanbai_tanka
				ELSE	0
			END) AS sum_tanka_ihuku,
		SUM(CASE
				WHEN	shohin_bunrui = '�L�b�`���p�i'	THEN hanbai_tanka
				ELSE	0
			END) AS sum_tanka_kitchen,
		SUM(CASE
				WHEN	shohin_bunrui = '�����p�i'		THEN hanbai_tanka
				ELSE	0
			END) AS sum_tanka_jimu
FROM	Shohin;