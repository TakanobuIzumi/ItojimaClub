-- ���i���ނ��Ƃ̍s�𐔂���
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui;

-- �d���P�����Ƃ̍s�𐔂���(�W��L�[��NULL���܂܂��ꍇ)
SELECT	shiire_tanka, COUNT(*)
FROM	Shohin
GROUP BY shiire_tanka;

-- �d���P�����Ƃ̍s�𐔂���(�W��L�[��NULL���܂܂��ꍇ)
SELECT	shiire_tanka, COUNT(*)
FROM	Shohin
WHERE	shohin_bunrui = '�ߗ�'
GROUP BY shiire_tanka;