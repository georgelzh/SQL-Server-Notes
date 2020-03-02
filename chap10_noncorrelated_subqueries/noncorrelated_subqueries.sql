-----------noncorrelated subqueries--------
--a noncorrelated subquery is a subquery that is independent of the 
--outer query. it can be executed on its own. Here is an eg:

select	s.sname
from	Student s
where	s.STNO in
	(select	gr.student_number
	 from	Grade_report gr
	 where	gr.GRADE = 'A')

--this is the subquery for the query above, it can be executed on its own.
select	gr.student_number
	 from	Grade_report gr
	 where	gr.GRADE = 'A'