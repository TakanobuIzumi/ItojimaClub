-- ���i�e�[�u�������i���ނŃO���[�v�����A�ߗނ��܂܂�郌�R�[�h��I��
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
GROUP BY shohin_bunrui
HAVING shohin_bunrui = '�ߗ�';

-- ���i�e�[�u���̏��i���ޗ񂪈ߗނ̃��R�[�h���A���i���ނŃO���[�v��
SELECT	shohin_bunrui, COUNT(*)
FROM	Shohin
WHERE	shohin_bunrui = '�ߗ�'
GROUP BY shohin_bunrui;

-- ���s���ʂ͓����ƂȂ邪�AWHERE����g�p����ق������R�[�h���i�荞��ł���O���[�v�����邽�߁A
-- �������x��WHERE����g���ق�������