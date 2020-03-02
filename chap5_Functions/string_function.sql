--Sring Functions
--row-level function. will not change the data unless use UPDATE


-------------------String Concatenation

--get names of the table, and concatenate each of the names with ",Esq":
SELECT names + ', Esq' AS [Employee Names]
FROM Employee4SumFunction

--eg 2: add (.....) to the left side of the names columns:
SELECT ('.....' + names) AS [Employee Names]
FROM Employee4SumFunction

--similarly to add it to the right side
SELECT (names + '.....') AS [Employee Names]
FROM Employee4SumFunction


---------------------String Extractors  SUBSTRING(string, startIndex, length) 
SELECT names, SUBSTRING(names, 2, 4) AS [middle of names]
FROM Employee4SumFunction

SELECT names, SUBSTRING(names, 0,2) AS [middle of names] -- it starts with 1 instead of 0
FROM Employee4SumFunction

--or:
SELECT names, "first letter of names" = SUBSTRING(names,-1,3)
FROM Employee4SumFunction

