-- �y�G���[�zGROUP BY����g���Ƃ��́ASELECT��ɏW��L�[�ȊO�̗񖼂������Ȃ�
SELECT	shohin_mei, shiire_tanka, COUNT(*)
FROM	Shohin
GROUP BY shiire_tanka;

-- �y�G���[�zGROUP BY���SELECT��ŕt�����ʖ��͎g���Ȃ�
SELECT	shohin_bunrui AS sb, COUNT(*)
FROM	Shohin
GROUP BY sb;