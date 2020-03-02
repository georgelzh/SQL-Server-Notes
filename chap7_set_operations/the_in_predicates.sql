------THE IN and NOT...IN Predicates
---to find intersection of set A and set B
--eg:
SELECT	sname, class
FROM	Student
WHERE	CLASS IN(3,4)


--to get same results as above
SELECT	sname, class
FROM	Student
WHERE	CLASS = 3 OR CLASS = 4

---------------------using IN as a subquery
---set A is students, set B is students that has grade A
SELECT	Student.SNAME
FROM	Student
WHERE	Student.STNO IN
	(SELECT	g.student_number
	 FROM	Grade_report g
	 WHERE	g.GRADE = 'A')

----using DISTINCT to get sorted results without duplication
SELECT	DISTINCT (Student.SNAME)
FROM	Student
WHERE	Student.STNO IN
	(SELECT	g.student_number
	 FROM	Grade_report g
	 WHERE	g.GRADE = 'A')


