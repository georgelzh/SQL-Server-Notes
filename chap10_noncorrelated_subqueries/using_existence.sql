--using existence
--before writing the query, we need to examine if the correlated 
--subquery is necessary or not.

--when the correlation of a subquery is necessary, and introduce a
--new predicate: EXISTS


--find students who take a computer science and also have earned a grade of B in that course.
select	s.sname
from	Student s
where	exists
	(select 1 from Grade_report gr, Section
	 where	section.SECTION_ID = gr.SECTION_ID
	 and	Section.COURSE_NUM like 'COSC%'
	 and	gr.STUDENT_NUMBER = s.STNO	--correlation is important here!!!
	 and	gr.GRADE = 'B')

--select 1 means returns true if a row in subquery exists that
--satisfies the condition in the subquery where clause. 

--when using the EXISTS predicate, we don't only use column of the 
--student table, but rather are seeking only to find whether the
--subquery where can be satisfied. 

---correlation is necessary with EXISTS consider the following query:
--this query has no correlation, therefore, it returns unexpected results
--as a result, it does not get us the correct answer, it's not efficient either.
--it unnecessarily ask the subquery over and over again.
select	s.sname
from	Student s
where	EXISTS
(select 'X'
 from	Grade_report gr, Section t
 where	t.SECTION_ID = gr.SECTION_ID
 and	t.COURSE_NUM like 'COSC%'
 and	gr.GRADE = 'B')



 -------correlation is usually necessary when we use EXISTS
-- consider another example in which a correlation could be used,
-- suppose that we want to find the names of all students who have three
-- or more Bs. A first pass at a query might be something like this

-- select s.sname
-- from	Student s
-- where	"something" in
--	(select  "something"
--	 from	Grade_report gr
--	 where	"count of grade" = 'B' > 2)

--suppose we ust student.snto as a filter and count in the subquery only
--when a row in the grade_report table correlates to that student. the query looks like:

select	s.sname
from	Student s
where 2 < (select  count(*)
		   from		Grade_report gr
		   where	gr.STUDENT_NUMBER = s.STNO
		   and		gr.GRADE = 'B')

--to get a list of students who have earned at least 3 Bs, we could try:
--use inline view
select	s.sname
from	Student s
where	s.STNO in
		(select STUDENT_NUMBER
		from	(select	gr.STUDENT_NUMBER, count(*) as [# of Bs student gets]
						 from	Grade_report gr
						 where	gr.GRADE = 'B'
						 group by gr.STUDENT_NUMBER
						 having	count(*) > 2) as vi)
--in this case, correlated subquery could be the most easy and most efficient way
