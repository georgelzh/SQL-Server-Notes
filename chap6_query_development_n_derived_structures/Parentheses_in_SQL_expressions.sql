------------Parentheses in SQL Expressions

-----------bad eg:
SELECT *
FROM Student
WHERE CLASS = 3 OR CLASS = 4 AND STNO < 100

-----------good eg:
SELECT *
FROM Student
WHERE CLASS = 3 OR (CLASS = 4 AND STNO < 100)

-----------another eg:
SELECT *
FROM Student
WHERE (CLASS = 3 OR CLASS = 4) AND STNO < 100

