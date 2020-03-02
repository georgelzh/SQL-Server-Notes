------------------Operator Precedence
--from highest to lowest level of precedence
/*

*, /, %
+, +(concatenate), -
=, >, <, <=, >=, !=, !>, !<
NOT
AND
BETWEEN< IN, LIKE, OR
= (assignment)

*/

---------------Data type precedence
/*
SQL_VARIANT
DATETIME
SMALLDATETIME
FLOAT
REAL
DECIMAL
MONEY
SMALLMONEY
BIGINT
INT
SMALLINT
TINYINT
BIT
NTEXT
TEXT
IMAGE
UNIQUEINDENTIFIER
NVARCHAR
NCHAR
VARCHAR
CHAR
BINARY
*/

------eg: if a float multiplies an int, you get float type as result
SELECT names, hours, 'Hours * .75' = hours* .75
FROM Employee4SumFunction
