--NULLIF function
/*
NULLIF(expression1, expression2)
returns null if expression1 = expression2,
returns expression1 if not equal.
*/


SELECT names, wage, new_wage = NULLIF(wage, 0)
FROM Employee4SumFunction

--eg 2: if wage 10 is lower than minimum wage, we can find if there is any people have wage as 10
SELECT names, wage,
		new_wage = NULLIF(wage, 10)
FROM Employee4SumFunction  -- be careful about using it because ED has a wage of null before this line.


