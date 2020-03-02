--ROUND function rounds numbers to a specified number of decimal places.

--eg:
SELECT names, wage, ROUND(wage/3, 2) AS [wage/3]  --2: means decimal places
FROM Employee4SumFunction

--eg:
SELECT CEILING(4.4) -- returns larger integer value when it's a decimal number

SELECT FLOOR(3.5) -- returns lower integer value when it's a decimal number

SELECT SQRT(4) --return square root of a positive number

SELECT ABS(-2) --return absolute num

SELECT SQUARE(2)  --return a number squared