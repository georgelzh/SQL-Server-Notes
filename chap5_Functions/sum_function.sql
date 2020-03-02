-- SUM Function

create table Employee4SumFunction
(
	names nvarchar(20),
	wage SMALLMONEY,
	hours SMALLINT
)

INSERT INTO Employee4SumFunction
VALUES ('Sumon Bagui', 10, 40)

INSERT INTO Employee4SumFunction
VALUES ('Sudip Bagui', 15, 30)

INSERT INTO Employee4SumFunction
VALUES ('Priyashi Saha', 18, null)

INSERT INTO Employee4SumFunction
VALUES ('Ed Evans', null, 10)

INSERT INTO Employee4SumFunction
VALUES ('Genny George', 20, 40)

--show table
SELECT * FROM Employee4SumFunction

--to find sum of hours worked, use the sum function:
SELECT SUM(hours) AS [TOTAL hours]
FROM Employee4SumFunction

