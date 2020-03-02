--MIN and MAX function


--to find min, max wage
SELECT MIN(wage) AS [Minimum Wage], MAX(wage) AS [Maximum Wage]
FROM Employee4SumFunction


--MIN and MAX works with character and datetime column too eg:
SELECT "first name in alphabetical order" = MIN(names)
FROM Employee4SumFunction


SELECT "last name in alphabetical order" = MAX(names)  -- in this case, names belongs to one column,
FROM Employee4SumFunction							--Computer does not know first and last name, so S is the 
													--least order letter within (first) names.
									

SELECT * FROM Employee4SumFunction

