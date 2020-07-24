-- 全行を数える
SELECT	COUNT(*)
FROM	Shohin;

-- NULLを除外して行数を数える(列を指定する)
SELECT	COUNT(shiire_tanka)
FROM	Shohin;

-- 重複業を除外して集約関数を使う(値の種類を求める)
SELECT	COUNT(DISTINCT shohin_bunrui)
FROM	Shohin;