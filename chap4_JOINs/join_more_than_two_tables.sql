--JOIN more than two tables

--joins are always done pair-wise
--use nested JOIN, or by a WHERE clause.

/*
SELECT column
FROM table1 JOIN
(table2 JOIN table3
ON table3.column3=table2.column2)
ON table1.column1=table2.column2
*/

--eg 1

SELECT c.COURSE_NAME, c.COURSE_NUMBER, d2m.DNAME
FROM Department_to_major d2m JOIN
(Course c JOIN Prereq p
ON c.COURSE_NUMBER = p.COURSE_NUMBER)  -- tables c and p are first joined 
ON c.OFFERING_DEPT=d2m.Dcode			--than join the result to d2m

-- rows without matching are not included in the results

--eg 2  course/department join first, then join prereq
SELECT c.COURSE_NAME, c.COURSE_NUMBER, d2m.DNAME
FROM Prereq p JOIN
(Course c JOIN Department_to_major d2m
ON c.OFFERING_DEPT=d2m.Dcode)
ON p.COURSE_NUMBER=c.COURSE_NUMBER

--For larger tables and multi-table joins, the order will determine
--which version of the query would be most efficient


