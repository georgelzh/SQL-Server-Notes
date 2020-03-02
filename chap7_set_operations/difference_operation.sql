------The Difference Operation
---SQL Server 2005 does not support MINUS, so we use NOT...IN to do so


----------------------eg 1
--suppose set A is students in classes 2, 3, 4
--set B is students in class 2, we can use NOT IN to remove set B from set A
SELECT	sname, class
FROM	Student
WHERE	CLASS IN (2,3,4)
	AND NOT CLASS IN (2)


----------------------eg 2
--find names of students who don't major COS or MATH. Also delete the set those students who are not COSC or MATH
CREATE VIEW	view1 AS
SELECT	sname, major
FROM	Student
WHERE	MAJOR NOT IN ('COSC', 'MATH')

CREATE VIEW view2 AS
SELECT	Student.SNAME, Student.MAJOR
FROM	Student
WHERE	Student.STNO IN
	(SELECT g.student_number
	 FROM	Grade_report g
	 WHERE	g.GRADE = 'A')

SELECT	*
FROM	view2

--Then to find those students who are not majoring in COSC or MATH, and remove
--the set those who made an A in some course

SELECT	SNAME
FROM	view1
WHERE	SNAME NOT IN
	(SELECT	SNAME
	 FROM	view2)

