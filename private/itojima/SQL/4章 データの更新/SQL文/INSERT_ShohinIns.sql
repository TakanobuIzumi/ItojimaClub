-- INSERT
INSERT INTO ShohinIns 
(shohin_id,	shohin_mei,	shohin_bunrui,	hanbai_tanka,	shiire_tanka,	torokubi) VALUES
('0001',	'Tシャツ',	'衣類',			1000,			500,			'2009-09-20');

-- 複数行INSERT(Oracleでは使用不可)
INSERT INTO ShohinIns VALUES
('0002',	'穴あけパンチ',		'事務用品',		500,	320,	'2009-09-11'),
('0003',	'カッターシャツ',	'衣類',			4000,	2800,	NULL),
('0004',	'包丁',				'キッチン用品',	3000,	2800,	'2009-09-20');

-- 列リスト省略
INSERT INTO ShohinIns VALUES('0005',	'圧力鍋',	'キッチン用品',	6800,	5000,	'2009-01-15');

-- shiire_tanka列にNULLを割り当てる
INSERT INTO ShohinIns VALUES('0006',	'フォーク',	'キッチン用品',	500,	NULL,	'2009-09-20');

-- DEFAULT値を挿入(明示的)
INSERT INTO ShohinIns
(shohin_id,	shohin_mei,		shohin_bunrui,	hanbai_tanka,	shiire_tanka,	torokubi) VALUES
('0007',	'おろしがね',	'キッチン用品',	DEFAULT,		790,			'2009-04-28');

-- DEFAULT値を挿入(暗黙的)
INSERT INTO ShohinIns
(shohin_id,	shohin_mei,		shohin_bunrui,	shiire_tanka,	torokubi) VALUES
('0007',	'おろしがね',	'キッチン用品',	790,			'2009-04-28');