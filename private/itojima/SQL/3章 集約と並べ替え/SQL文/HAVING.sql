-- ���i���ނŏW�񂵂��O���[�v����܂܂��s����2�s�̂���
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING COUNT(*) = 2;

-- ���i���ނŏW�񂵂��O���[�v����̔��P���̕��ς�2500�ȏ�̂���
SELECT	shohin_bunrui, AVG(hanbai_tanka)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING AVG(hanbai_tanka) >= 2500;