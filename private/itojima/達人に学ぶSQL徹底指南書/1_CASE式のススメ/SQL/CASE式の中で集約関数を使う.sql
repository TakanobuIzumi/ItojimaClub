-- 1つだけのクラブに所属している学生については、そのクラブIDを取得する
-- 複数のクラブを掛け持ちしている学生については、主なクラブのIDを取得する
SELECT std_id,
       CASE WHEN COUNT(*) = 1
	        THEN MAX(club_id)
	   ELSE MAX(CASE WHEN main_club_flg = 'Y'
	                 THEN club_id
			    ELSE NULL END) END AS main_club
  FROM StudentClub
GROUP BY std_id;