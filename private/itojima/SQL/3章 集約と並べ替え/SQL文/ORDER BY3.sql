-- ORDER BY���񖼂Ŏw��
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY hanbai_tanka DESC, shohin_id;

-- ORDER BY����ԍ��Ŏw��
SELECT	shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY 3 DESC, 1;

-- ��L�͂ǂ�������l�̌��ʂƂȂ邪�A��ԍ��w��͉ǐ��̖ʂŖ�肪����A
-- �܂��A�����폜�����ׂ��@�\�ɋ������Ă��邽�߁A�g�p���Ȃ��ق����ǂ�