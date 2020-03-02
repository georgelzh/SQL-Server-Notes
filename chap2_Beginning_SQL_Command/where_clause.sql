/*
where clause, filter
SELECT column-names
FROM table-names
WHERE criteria

comparison operators: >, <>(not equal), =, >=, <=
eg.
SELECT *
FROM Dependent
WHERE sex = 'F';


-- can also combine where and order by such as:
SELECT	dname, age
FROM	Dependent
WHERE	age<=5
ORDER	BY age;

-- AND Operator
SELECT	*
FROM	Dependent
WHERE	age<=5
AND		sex = 'F';


--The OR Operator
SELECT	*
FROM	Dependent
WHERE	age>20
OR		sex = 'F';


--The BETWEEN Operator
/*
SELECT	...
FROM
WHERE
(NOT)BETWEEN
*/
SELECT	dname, age
FROM	Dependent
WHERE	age
BETWEEN 3 AND 5;
*/


--Negating the BETWEEN Operator
SELECT	dname, age
FROM	Dependent
WHERE	age
NOT BETWEEN 3 AND 15;

/*
SELECT	sname, class
FROM	Student
WHERE	class <1
OR		class >3
*/