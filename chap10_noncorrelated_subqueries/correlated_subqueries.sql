--a correlated subquery is an inner subquery whose info
--is referenced by the main, outer query such that the inner 
--query may be thought of as being executed repeatedly. 

--the query cannot stand alone as it depends on the outer query. 
--therefore, completing the subquery prior to the execution of the
--outer query is not an option. the efficiency varies. it might be
--worthwhile to test the efficiency of correlated subqueries versus joins or sets.

--eg: this query is an example of the non-correlated subquery from the previous
--section revised as a correlated subquery:


select	s.sname
from	Student s
where	s.STNO in
	(select  gr.student_number
	 from	Grade_report gr
	 where	gr.STUDENT_NUMBER = STNO
	 And	gr.GRADE = 'A')



--in this eg, the inner query references the outer one. 
--each row from the outer query can be  c onsidered to be selected 
--individually and tested against all rows of the inner query one
--at a time until it determined whether a given student number is 
--in the inner set and whether that student earned an A.

--the correlated subqury acts like a nested Do loop in a programming language,
--where the first row from the student table is selected and tested against all
--the rows in the grade_report table, and then second row is selected and tested
--against all rows in the grade_report table. the following is Do loop pseudocode:

--LOOP1: For each row in student s Do
--	LOOP2: for each row in grade_report gr Do
--			If(gr.student_number = s.stno) Then
--				if(gr.grade = 'B') THEN true.
--	END	LOOP2;
--	If true, Then Student row is selected
--END LOOP1


--the internal handling of how query executes depends on
--the SQL and the optimizer for that database engine.