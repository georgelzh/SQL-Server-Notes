-----Union and the Join
-------WHEN A JOIN may be used versus when a UNION may be used


--------------------straightforward JOIN operation
----to find all students who took accounting courses
--use DISTINCT, because join gives duplicates
SELECT	DISTINCT(SNAME)
FROM	Course c JOIN (Section se JOIN (Student s JOIN Grade_report g
ON		s.STNO = g.STUDENT_NUMBER)
ON		se.SECTION_ID = g.SECTION_ID)
ON		COURSE_NUMBER = se.COURSE_NUM
AND		COURSE_NAME LIKE 'ACC%'


/*

SELECT	TOP(10)*
FROM	Student s JOIN Grade_report g
ON		s.STNO = g.STUDENT_NUMBER

SELECT	TOP(10)*
FROM	Section se JOIN (Student s JOIN Grade_report g
ON		s.STNO = g.STUDENT_NUMBER)
ON		se.SECTION_ID = g.SECTION_ID

*/


-------A not straightforward query
-- to find students who takes accounting class, also students whose major classes need overHead projector

SELECT	SNAME
FROM	Course c JOIN (Section se JOIN (Student s JOIN Grade_report g
ON		s.STNO = g.STUDENT_NUMBER)
ON		se.SECTION_ID = g.SECTION_ID)
ON		COURSE_NUMBER = se.COURSE_NUM
AND		COURSE_NAME LIKE 'ACC%'
UNION
SELECT	SNAME
FROM	Student s JOIN 
(Department_to_major d 
JOIN (Course c JOIN 
(Room r JOIN Section se
ON		r.ROOM = se.ROOM)
ON		c.COURSE_NUMBER = se.COURSE_NUM)
ON		d.Dcode = c.OFFERING_DEPT)
ON		s.MAJOR = d.Dcode
WHERE	r.OHEAD = 'Y'

