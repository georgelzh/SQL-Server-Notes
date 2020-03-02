-----------------JOINS Versus Subqueries
--set operation are less common and usually less efficient 
--than joins and subqueries

--to get a list of names and numbers of students who have made As or Bs,
--in any course. you can complete this query as either a subquery or a join.
--As a subquery with an In predicate, it will take the following:

SELECT	Student.SNAME, Student.STNO
FROM	Student
WHERE	Student.STNO
	IN	(SELECT gr.student_number
		 FROM	Grade_report gr
		 WHERE	gr.GRADE = 'B' OR gr.GRADE = 'A')
ORDER BY Student.STNO

--subquery before in is called outer query. query after IN called inner query
