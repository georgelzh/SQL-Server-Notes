--Aggregate function takes multiple rows and return a result(one number).

--COUNT function
/*
SELECT COUNT(*) -- returns number of rows even null value rows
FROM table-names
*/

SELECT COUNT(*) AS [Count]
FROM Grade_report

--to count items in specific column
/*
SELECT COUNT(attribute_name)
FROM table-name
*/

SELECT COUNT(grade) AS [Count of Grade]
FROM Grade_report

--how many rows are there in the Cartesian product of the student, section, and grade_report
SELECT COUNT(*) AS [Count]
FROM Student, Section, Grade_report



--countrasting the previous COUNTing-query and its Cartesian product result to this query:
--three-way equi-join
SELECT COUNT(*) AS [Count]
FROM Student, Section, Grade_report
WHERE Student.STNO = Grade_report.STUDENT_NUMBER
AND Grade_report.SECTION_ID=Section.SECTION_ID


--SQL does not allow you to count two column at the same time
SELECT COUNT(grade, section_id)
FROM Grade_report
