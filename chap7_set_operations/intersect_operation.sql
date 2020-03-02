-------------INTERSECT Operator
--find objects in set A also in set B
--eg: find students with grade
SELECT	s.stno
FROM	Student s
INTERSECT
SELECT	g.student_number
FROM	Grade_report g
WHERE	g.GRADE = 'A'



-------to find students have dependent
SELECT	s.stno
FROM	Student s
INTERSECT
SELECT	d.pno
FROM	Dependent d


----INTERSECT gives us the answer, but it's specified by the column, such as now, stno is all we get
---Warning: using INTERSECT, you can't get students' name
----Therefore, IN is sometimes better to use.

---codes below does not work
SELECT	s.stno, s.sname
FROM	Student s
INTERSECT
SELECT	d.pno, relationship
FROM	Dependent d


-----Alternative
SELECT	s.stno, s.sname
FROM	Student s
WHERE	(s.STNO IN
(SELECT pno
FROM Dependent))
