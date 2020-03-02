---------------Query Development -- process of finding the answer we want

--suppose we want names of all students in student_course database who major in 
--computer science(COSC) and have earned a grade of B in some course.

/*
1. get students major in cs
SELECT *
FROM Student
WHERE major='COSC'

2. find students with a grade B
SELECT stu.sname, stu.major, g.section_id, g.grade
FROM Student stu, Grade_report g
WHERE stu.major = 'COSC'
AND		stu.stno=g.student_number

3. to get B, we need another AND
SELECT stu.sname, stu.major, g.section_id, g.grade
FROM Student stu, Grade_report g
WHERE stu.major = 'COSC'
AND	stu.stno=g.student_number
AND	g.grade = 'B'

4. get only name
SELECT stu.sname
FROM Student stu, Grade_report g
WHERE stu.major = 'COSC'
AND	stu.stno=g.student_number
AND	g.grade = 'B'

5. get answer in a reasonable "reasy-read" manner use DISTINCT and ORDER BY
SELECT DISTINCT(stu.sname)
FROM Student stu, Grade_report g
WHERE stu.major = 'COSC'
AND   stu.stno = g.student_number
AND	  g.grade = 'B'
ORDER BY stu.sname
*/