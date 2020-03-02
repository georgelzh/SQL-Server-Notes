--Self Joins ------Join a table with itself
--to find the senior students in the student,
--we need to compare students to students so we need self join 

--eg:

SELECT 'SENIORITY' = x.sname + ' is in a higher class than ' + y.sname
FROM Student AS x, Student AS y
WHERE y.CLASS = 3
AND x.CLASS > y.CLASS

--alternative INNER JOIN syntax for this non-equi-join is
SELECT 'SENIORITY' = x.SNAME + ' is in a higher class than ' + y.SNAME
FROM Student AS x INNER JOIN Student AS y
ON x.CLASS > y.CLASS
WHERE y.CLASS = 3


--using where join. join the parts x.class is greater than y.class and y.class = 3
--so this gives us only the seniors.
SELECT *
FROM Student