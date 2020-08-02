-- 4.1
-- ��̃e�[�u����񂪎擾�����

-- 4.2
-- INSERT���͎��s����Ȃ�

-- 4.3
-- ShohinSaeki�e�[�u���쐬
CREATE TABLE ShohinSaeki
(shohin_id		CHAR(4)			NOT NULL,
 shohin_mei		VARCHAR(100)	NOT NULL,
 hanbai_tanka	INTEGER,
 shiire_tanka	INTEGER,
 saeki			INTEGER,
 PRIMARY KEY (shohin_id));

 -- ���v���v�Z����ShohinSaeki�ɓo�^
INSERT INTO ShohinSaeki (shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saeki)
SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, hanbai_tanka - shiire_tanka
FROM Shohin;

-- 4.4
UPDATE	ShohinSaeki
SET		hanbai_tanka = 3000
WHERE	shohin_id = '0003';

UPDATE	ShohinSaeki
SET		saeki = hanbai_tanka - shiire_tanka
WHERE	shohin_id = '0003';