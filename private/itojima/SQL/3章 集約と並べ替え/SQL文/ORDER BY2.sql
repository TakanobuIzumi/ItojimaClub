-- ORDER BY�ł́ASELECT��ł����ʖ��𗘗p�ł���
SELECT	shohin_id AS id, shohin_mei, hanbai_tanka AS ht, shiire_tanka
FROM	Shohin
ORDER BY ht, id;

-- SELECT��Ɋ܂܂�Ă��Ȃ����ORDER BY�Ɏw��ł���
SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
ORDER BY shohin_id;

-- �W��֐����g����
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
ORDER BY COUNT(*);