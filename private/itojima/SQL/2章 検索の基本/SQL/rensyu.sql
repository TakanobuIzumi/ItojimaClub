--2.1
SELECT	shohin_mei, torokubi
FROM	Shohin
WHERE	torokubi >= '2009-04-28';

--2.2
--���ʂ͎擾�ł��Ȃ�

--2.3
SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
WHERE	NOT hanbai_tanka - shiire_tanka < 500;

SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
WHERE	hanbai_tanka - 500 >= shiire_tanka;

--2.4
SELECT	shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 - shiire_tanka AS "rieki"
FROM	Shohin
WHERE	(shohin_bunrui = '�����p�i' OR shohin_bunrui = '�L�b�`���p�i') AND (hanbai_tanka * 0.9 - shiire_tanka > 100);