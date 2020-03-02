
--ISNULL function

--if null is contained in a calculation on a row, the results is always null.
--declare variables
DECLARE @a FLOAT, @b FLOAT
SET @a = 3
SET @b = 2
SELECT @a + @b AS 'A + B = '

DECLARE @a FLOAT, @b FLOAT
SET @a = NULL
SET @b = 2
SELECT @a + @b AS 'A + B = ' --we get null as result

/* to handle null issue, we use a row-level function ISNULL


ISNULL(expression1, ValueIfNull)

it saysi, it the expression is not null, return the value, but if 
the value is null, return ValueIfNull. ValueIfNull must be compatible with
the data type.
*/
-
--eg:
DECLARE @a FLOAT, @b FLOAT
SET @a = NULL
SET @b = 2
SELECT ISNULL(@a,0) + ISNULL(@b,0) AS 'A + B = ' --we get null as result

--eg 2:   use employee4Sumfunction table, to multiply the wage by hours
--and avoid the null-result problem by making the nulls act like zeros,
--a query could read:

SELECT names, wage, hours, ISNULL(wage, 0) * ISNULL(hours, 0) AS [wage*hours]  -- you can set default wage to 10 by using
FROM Employee4SumFunction														--ISNULL(wage, 10)
