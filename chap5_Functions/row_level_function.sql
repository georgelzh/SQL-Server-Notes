--Row-Level Functions
--	aggregate functions operate on multiple rows for a result.
--	it operates on values in single rows, one row at a time.

--Arithmetic operations on a column
--row-level "function" is not a function, but an operation performed 
--in a result set. But the use of arithmetic operation in result 
--sets behaves like functions

--eg, in Employee4SumFunction, if we wanted to display every person's 
--wage plus 5, we could type the following:

SELECT wage, (wage + 5) AS [wage + 5]
FROM Employee4SumFunction

--values could also be -,*,/ and from columns
--note: (wage + 5) is only a "read-only", 'display-only' function,
--because we are using it in a SELECT statement. We can use UPDATE to actually change it.


