-- �S�s�𐔂���
SELECT	COUNT(*)
FROM	Shohin;

-- NULL�����O���čs���𐔂���(����w�肷��)
SELECT	COUNT(shiire_tanka)
FROM	Shohin;

-- �d���Ƃ����O���ďW��֐����g��(�l�̎�ނ����߂�)
SELECT	COUNT(DISTINCT shohin_bunrui)
FROM	Shohin;