-- �e�[�u���̃}�b�`���O�FIN�q��̗��p
SELECT course_name,
       CASE WHEN course_id IN
	               (SELECT course_id FROM OpenCourses
				     WHERE month = 201806) THEN '�Z'
			ELSE '�~' END AS "6��",
       CASE WHEN course_id IN
	               (SELECT course_id FROM OpenCourses
				     WHERE month = 201807) THEN '�Z'
			ELSE '�~' END AS "7��",
       CASE WHEN course_id IN
	               (SELECT course_id FROM OpenCourses
				     WHERE month = 201808) THEN '�Z'
			ELSE '�~' END AS "8��"
  FROM CourseMaster;

-- �e�[�u���̃}�b�`���O�FEXISTS�q��̗��p
SELECT course_name,
       CASE WHEN  EXISTS
	               (SELECT course_id FROM OpenCourses OC
				     WHERE month = 201806
					   AND OC.course_id = CM.course_id) THEN '�Z'
			ELSE '�~' END AS "6��",
       CASE WHEN  EXISTS
	               (SELECT course_id FROM OpenCourses OC
				     WHERE month = 201807
					   AND OC.course_id = CM.course_id) THEN '�Z'
			ELSE '�~' END AS "7��",
       CASE WHEN  EXISTS
	               (SELECT course_id FROM OpenCourses OC
				     WHERE month = 201808
					   AND OC.course_id = CM.course_id) THEN '�Z'
			ELSE '�~' END AS "8��"
  FROM CourseMaster CM;