-- 現在の日付(SQLServerのみ)
SELECT CAST(CURRENT_TIMESTAMP AS DATE) AS CUR_DATE;

-- 現在の時間(SQLServerのみ)
SELECT CAST(CURRENT_TIMESTAMP AS TIME) AS CUR_TIME;

-- 現在の日時
SELECT CURRENT_TIMESTAMP;

-- 日付要素の切り出し(SQLServerのみ)
SELECT	CURRENT_TIMESTAMP,
		DATEPART(YEAR,		CURRENT_TIMESTAMP) AS year,
		DATEPART(MONTH,		CURRENT_TIMESTAMP) AS month,
		DATEPART(DAY,		CURRENT_TIMESTAMP) AS day,
		DATEPART(HOUR,		CURRENT_TIMESTAMP) AS hour,
		DATEPART(MINUTE,	CURRENT_TIMESTAMP) AS minute,
		DATEPART(SECOND,	CURRENT_TIMESTAMP) AS second;