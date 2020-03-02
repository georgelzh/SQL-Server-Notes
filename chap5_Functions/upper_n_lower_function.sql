--the upper and lower function
/*
To produce all the fields in the result set in uppercase or in lowercase,
you can use the UPPER or LOWER functions. eg: to produce all the names in the Employee
table in uppercase :
*/

SELECT UPPER(names) AS [NAMES IN CAPS]
FROM Employee4SumFunction

SELECT LOWER(names) AS [NAMES IN SMALL]
FROM Employee4SumFunction

-- get in all uppercase, the first name followed by the first letter of the last name:
SELECT "Employee Names" = UPPER(SUBSTRING(names,1,CHARINDEX(' ',names)-1)) + ', ' + 
SUBSTRING(names,CHARINDEX(' ',names)+1, 1) + '.'
FROM Employee4SumFunction
