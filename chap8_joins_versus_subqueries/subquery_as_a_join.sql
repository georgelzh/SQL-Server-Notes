------------Subquery as a JOIN

SELECT	DISTINCT STUDENT.SNAME, STUDENT.STNO
FROM	STUDENT, GRADE_REPORT GR
WHERE	STUDENT.STNO = GR.STUDENT_NUMBER
AND		(GR.GRADE = 'B' OR GR.GRADE = 'A')

--when DISTINCT is used, internal sorting is performed before the result
--set is displayed. such sorting may decrease response time for a query.

--in the subquery version of the query, duplication of names does not occur in the output.
--this is so because you are setting up a set from which you will choose names, a given
--name is either in the subquery set or it is not. remember that stno is unique.