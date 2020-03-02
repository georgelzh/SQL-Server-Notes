/*
now you know how to use quite a few string extractor functions, you can combine them to produce the following
output, which will require a nesting of string functions:
*/

SELECT "Employee Names" = SUBSTRING(names,1,CHARINDEX(' ',names)-1) + ', ' +
SUBSTRING(names, CHARINDEX(' ',names)+1,1) + '.'
FROM Employee4SumFunction


--to display the names in a more useful manner-- that is, the last name, comma, and then the first
--initial--we have to use the followin query:
SELECT "Employee Names" = SUBSTRING(names, (CHARINDEX(' ',names)+1 ), 
(CHARINDEX(' ',names))) + ', ' + SUBSTRING(names,1,1) + '.'  -- get the last name + a ', ' and + the first name initial.
FROM Employee4SumFunction

