--Matching Substrings Using LIKE
--use LIKE function in a WHERE clause
--use % in the beginning or end of a LIKE-string

--suppose that we want to find all names that have "Smith" in our Student table:
SELECT *
FROM Student
WHERE SNAME LIKE '%SMith%'

--to find pattern starting with 'Smith' from the student table
SELECT *
FROM Student
WHERE SNAME LIKE 'Smith%'  --SQL SERVER is not case sensitive, but you can change it in configurations


--to find all course_num starts with MATH from section table:
SELECT *
FROM Section
WHERE COURSE_NUM LIKE 'MATH%'



--------------------------------------Finding a range of character
----find all grade between C and F
--LIKE is case-insensitive


SELECT DISTINCT student_number, grade
FROM Grade_report
WHERE grade LIKE '[c-f]'
AND STUDENT_NUMBER > 100

/*
To find all grades from the Grade_report table
that are not between C and F, we use a caret(^) before the range
we do not want to find:
*/
SELECT DISTINCT STUDENT_NUMBER, grade
FROM Grade_report
WHERE grade LIKE '[^c-f]'
AND STUDENT_NUMBER > 100


-----------------------------------to find all the courses from the section table that 
--start with "C", but do not have "h" as the second character:
SELECT *
FROM Section
WHERE COURSE_NUM LIKE 'C[^h]%'


-----------------------------------Finding a particular character
--to find a particular character using like, we could replace the 
--character in a square brackets []. eg. to find all names from student table
--that begins with a B or G and end in "ill", we could type:

SELECT sname
FROM Student
WHERE SNAME LIKE '[BG]ill'



-----------------Finding a single character or single digit--the underscore wildcard character
--A single character or digit can be found in a particular position in a string by using an 
--underscore,_,for the wildcard in that position in the string. For example, to find all students
--with student_names in the 130s(130...139) range from the Student table type:

SELECT DISTINCT STUDENT_NUMBER, grade
FROM Grade_report
WHERE STUDENT_NUMBER LIKE '13_'


--------------------------Using NOT LIKE
/*
LIKE operator can be negated with the NOT. For example, to get listing
of the non math courses and the courses that do not start in "C" from the Section table:
*/
SELECT *
FROM Section
WHERE COURSE_NUM NOT LIKE 'MATH%'
AND COURSE_NUM NOT LIKE 'C%'