-- �̔��P���̍��v
SELECT SUM(hanbai_tanka)
FROM Shohin;

-- �̔��P���Ǝd���P���̍��v
SELECT SUM(hanbai_tanka), SUM(shiire_tanka)
FROM Shohin;

-- �̔��P���Ǝd���P���̍��v(�d�����O����)
SELECT SUM(hanbai_tanka), SUM(DISTINCT hanbai_tanka)
FROM Shohin;