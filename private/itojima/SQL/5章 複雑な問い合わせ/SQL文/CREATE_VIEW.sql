-- ShohinSum�r���[�쐬
CREATE VIEW ShohinSum (shohin_bunrui, cnt_shohin)	/* �r���[�̗� */
AS
SELECT		shohin_bunrui, COUNT(*)
FROM		Shohin
GROUP BY	shohin_bunrui;