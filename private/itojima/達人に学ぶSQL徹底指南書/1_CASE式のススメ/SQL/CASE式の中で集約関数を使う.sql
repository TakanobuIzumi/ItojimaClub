-- 1�����̃N���u�ɏ������Ă���w���ɂ��ẮA���̃N���uID���擾����
-- �����̃N���u���|���������Ă���w���ɂ��ẮA��ȃN���u��ID���擾����
SELECT std_id,
       CASE WHEN COUNT(*) = 1
	        THEN MAX(club_id)
	   ELSE MAX(CASE WHEN main_club_flg = 'Y'
	                 THEN club_id
			    ELSE NULL END) END AS main_club
  FROM StudentClub
GROUP BY std_id;