--CHARINDEX function
--returns the starting position of a specified pattern.

--to find the position of a space in the employee names in the employee4sumfunction table:

SELECT names, "Position of Space in Employee Names" = CHARINDEX(' ',names)
FROM Employee4SumFunction
