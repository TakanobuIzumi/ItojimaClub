-- �̔��P���������ŕ��ёւ���(ASC�͏ȗ��\)
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka ASC;

-- �̔��P�����~���ŕ��ёւ���
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka DESC;

-- �̔��P���Ə��iID�̏����ŕ��ёւ���
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka, shohin_id;

-- �d���P���̏����ŕ��ёւ���(NULL�͐擪�܂��͖����ɂ܂Ƃ߂ĕ\�������)
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY shiire_tanka;