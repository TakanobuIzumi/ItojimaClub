-- INSERT
INSERT INTO ShohinIns 
(shohin_id,	shohin_mei,	shohin_bunrui,	hanbai_tanka,	shiire_tanka,	torokubi) VALUES
('0001',	'T�V���c',	'�ߗ�',			1000,			500,			'2009-09-20');

-- �����sINSERT(Oracle�ł͎g�p�s��)
INSERT INTO ShohinIns VALUES
('0002',	'�������p���`',		'�����p�i',		500,	320,	'2009-09-11'),
('0003',	'�J�b�^�[�V���c',	'�ߗ�',			4000,	2800,	NULL),
('0004',	'�',				'�L�b�`���p�i',	3000,	2800,	'2009-09-20');

-- �񃊃X�g�ȗ�
INSERT INTO ShohinIns VALUES('0005',	'���͓�',	'�L�b�`���p�i',	6800,	5000,	'2009-01-15');

-- shiire_tanka���NULL�����蓖�Ă�
INSERT INTO ShohinIns VALUES('0006',	'�t�H�[�N',	'�L�b�`���p�i',	500,	NULL,	'2009-09-20');

-- DEFAULT�l��}��(�����I)
INSERT INTO ShohinIns
(shohin_id,	shohin_mei,		shohin_bunrui,	hanbai_tanka,	shiire_tanka,	torokubi) VALUES
('0007',	'���낵����',	'�L�b�`���p�i',	DEFAULT,		790,			'2009-04-28');

-- DEFAULT�l��}��(�ÖٓI)
INSERT INTO ShohinIns
(shohin_id,	shohin_mei,		shohin_bunrui,	shiire_tanka,	torokubi) VALUES
('0007',	'���낵����',	'�L�b�`���p�i',	790,			'2009-04-28');