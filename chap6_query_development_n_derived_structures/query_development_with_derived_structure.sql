/*
Here we talk about how derived structure such as views and temporary tables
can be used in query development
*/

-------------Develop the query
SELECT	s.sname, s.stno, d.dname, s.class
FROM	Student AS s, Department_to_major AS d
WHERE	s.MAJOR = d.Dcode
AND		(s.CLASS = 1 or s.CLASS = 2)
AND		s.MAJOR = 'COSC'


-------------Using a Derived Structure

----option 1 turning your query into a view
CREATE VIEW stu_view AS
SELECT	s.sname, s.stno, d.dname, s.class
FROM	Student AS s, Department_to_major AS d
WHERE	s.MAJOR = d.Dcode
AND		(s.CLASS = 1 or s.CLASS = 2)
AND		s.MAJOR = 'COSC'


----option 2 using an inline view
SELECT	v.sname, v.dname, v.class
FROM	(SELECT	s.sname, s.stno, d.dname, s.class
FROM	Student AS s, Department_to_major AS d
WHERE	s.MAJOR = d.Dcode
AND		(s.CLASS = 1 or s.CLASS = 2)
AND		s.MAJOR = 'COSC') AS v


----option 3 using a global temporary table
SELECT	s.sname, s.stno, d.dname, s.class INTO ##Temp2
FROM	Student AS s, Department_to_major AS d
WHERE	s.MAJOR = d.Dcode
AND		(s.CLASS = 1 or s.CLASS = 2)
AND		s.MAJOR = 'COSC'

SELECT *
FROM ##Temp2