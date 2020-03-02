--DISTINCT Function
--returns unique data in the selected columns

--eg:
SELECT grade
FROM Grade_report  -- returns 209 results

--use of distinct
SELECT DISTINCT grade
FROM Grade_report	--returns 6 results

--Using DISTINCT with other aggregate functions
SELECT "Count of distinct grades" = COUNT(DISTINCT(grade))
FROM Grade_report		--non value is not included

--to sum the distinct wages from the a table:
SELECT "Sum of distinct wages" = SUM(DISTINCT(wage))
FROM Employee4SumFunction

