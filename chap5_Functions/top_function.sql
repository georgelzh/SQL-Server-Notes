--The TOP Function
--return or display from a result set the rows that fall at
--the top of a range specified by an ORDER BY clause.

--suppose we want the names of the 'top 2' employees
--with the lowest wages from Employee4SumFunction table
--eg:

SELECT TOP 2 names, wage
FROM Employee4SumFunction
ORDER BY wage ASC

--without ORDER BY clause, the query return rows based on the order in which the rows
--appear in the table :
SELECT TOP 2 names, wage
FROM Employee4SumFunction

--in relational database, you should never count on retrieving rows 
--in some order and always use ORDER BY if you desire an ordering.



--HANDLING THE 'BOTTOM'
-- to get bottom data (people with highest wage) use:
SELECT TOP 2 names, wage
FROM Employee4SumFunction
ORDER BY wage DESC



--HANDLING A TIE
/*
This section answers the question: what if there is a tie? For eg,
what if you are looking for the top two wages, and two employees have
the same amount in the wage column? to handle ties, SQL Server has a 
WITH TIES option that can be used with the TOP function.
*/

--to operate this function im changing Sudio bagui's wage to 10.
/*
UPDATE Employee4SumFunction
SET wage = 10
WHERE names LIKE '%Sudip%'
*/

SELECT TOP 2 WITH TIES names, wage
FROM Employee4SumFunction
ORDER BY wage ASC
-- the WITH TIES option is not allowed without a corresponding ORDER BY clause.



--TOP Function with PERCENT
SELECT TOP 10 PERCENT sname
FROM Student
ORDER BY SNAME ASC  --change the ASC TO DESC to get bottom 10% sname


--without ORDER BY
SELECT TOP 10 PERCENT sname
FROM Student

--combine PERCENT with WITH TIES :
SELECT TOP 10 PERCENT WITH TIES sname
FROM Student
ORDER BY SNAME DESC
