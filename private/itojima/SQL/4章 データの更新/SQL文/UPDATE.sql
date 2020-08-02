-- 登録日をすべて変更
UPDATE Shohin
SET torokubi = '2009-10-10';

-- 一部の行だけを変更する
UPDATE	Shohin
SET		hanbai_tanka = hanbai_tanka * 10
WHERE	shohin_bunrui = 'キッチン用品';

-- NULLで更新
UPDATE	Shohin
SET		torokubi = NULL
WHERE	shohin_id = '0008';

-- 複数列の更新
UPDATE	Shohin
SET		hanbai_tanka = hanbai_tanka * 10,
		shiire_tanka = shiire_tanka / 2
WHERE	shohin_bunrui = 'キッチン用品';