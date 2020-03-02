--Len function
--returns the length of a desired string excluding trailing blanks.

--eg: to list the lengths of the full names(including any spaces)
--in the Employee4sumFunction table:

SELECT names, LEN(names) AS [Length of Names]
FROM Employee4SumFunction