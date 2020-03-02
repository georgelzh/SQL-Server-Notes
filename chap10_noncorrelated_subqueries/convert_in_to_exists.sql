--Fom IN to EXISTS
--convert in to exists, would be to move the set test

--consider this uncorrelated subquery:
select	*
from	Student s
where	s.STNO in
	(select g.student_number
	 from	Grade_report g
	 where	GRADE = 'B')
	 

--following subquery is written as a correlated subquery
select	*
from	Student s
where	exists
	(select  g.student_number
	 from	Grade_report g
	 where	GRADE = 'B'
	 and	s.STNO = g.STUDENT_NUMBER)

--this example gives you a pattern to move from where in to where exists
-- to test the efficiency of both kinds of queries. both of the preceding
--queries should produce the same output.
