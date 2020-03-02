--JOIN

--Performance hint for efficient joins
/*
Join on the narrowest columns possible. the narrower the column, 
the less storage space is used by SQL Server. and SQL Sever can 
read and write the data faster
*/

--Equi Join 
--eg: joints two table together as long as there is both one column 
--on each table where the values are equal; 

--eg: join student table and dependent table to find students' dependent name
--it joins table 2 to table 1
SELECT stno, sname, relationship, age -- age and relationship are from table 2
FROM Student s JOIN Dependent d
ON s.STNO=d.PNO		--When an equal sign is used as join condition, the join is called "equi-join".

--check the original table
SELECT * FROM Dependent
SELECT * FROM Student

--eg2: join course prerequisition table to course table to check the prereq for each course
--course do not have prerequisites are not in the result set
SELECT COURSE_NAME, c.COURSE_NUMBER, PREREQ -- or use *
FROM Course c JOIN Prereq p
ON c.course_number=p.course_number	

--when dealing with table combination, specifically joins, it's a good idea
--to estimate the number of rows one might expect in the result set. To find out
--how many rows will actually occur in the result set, the COUNT function is used eg:
SELECT COUNT(*)
FROM Course c JOIN Prereq p
ON	c.COURSE_NUMBER=p.COURSE_NUMBER


--INNER JOIN behaves just like JOIN above
/*
SELECT columns
FROM table1 INNER JOIN table2
ON table1.column1=table2.column1
eg:
*/
SELECT *
FROM Course INNER JOIN Prereq
ON Course.COURSE_NAME=Prereq.COURSE_NUMBER


--check the original table
SELECT * FROM Course
SELECT * FROM Prereq