/*
OUTER JOIN are used when we want to keep all the rows from the one table,
such as Course, or all the rows from the other, regardless of whether they have matching
rows in the other table.

LEFT OUTER JOIN - Keep all rows from first table
RIGHT OUTER JOIN - Keep all rows from second table
FULL OUTER JOIN - Keep all rows from both table
*/




--LEFT OUTER JOIN = LEFT JOIN
/*
SELECT columns
FROM table1 LEFT JOIN table2
ON table1.column1=table2.column1
*/
--eg: to list all rows in courses in the course table(left),
--even if these courses do not have prerequisites:
select *
from course

select *
from prereq

SELECT *
FROM Course c LEFT JOIN Prereq p
ON c.COURSE_NUMBER = p.COURSE_NUMBER 

/*here is how the left join works:
firstly, a join on c.COURSE_NUMBER = p.COURSE_NUMBER is done.
Then row without match is included in the results set with
a row of null values joined to the right side. add null value to the right table.
*/

/*
use of *= operator for the left OUTER JOIN is considered old syntax
and hence its use is not encouraged. It's prone to ambiguities,
especially when joining three or more tables. 
*/



--RIGHT OUTER JOIN = RIGHT JOIN
SELECT * -- columns
FROM Prereq p RIGHT JOIN Course c
ON p.COURSE_NUMBER = c.COURSE_NUMBER



--FULL OUTER JOIN 
SELECT *
FROM Course c FULL OUTER JOIN Prereq p
ON c.COURSE_NUMBER = p.COURSE_NUMBER
