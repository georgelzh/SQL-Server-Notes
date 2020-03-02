--The LEFT and RIGHT functions
--returns a portion of a string, starting from either the lefr or right
-- side of stringexpression. N defines the number of character returns eg:
/*
LEFT(stringexpression, n)
RIGHT(stringexpression, n)
*/

SELECT names, LEFT(names, 3) AS [left]
FROM Employee4SumFunction

SELECT names, RIGHT(names, 3) AS [left]
FROM Employee4SumFunction
