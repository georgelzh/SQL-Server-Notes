--not exists


--consider the following:

select	s.sname
from	Student s
where	exists
	(select  'X'
	 from	Grade_report gr
	 where	s.STNO = gr.STUDENT_NUMBER
	 and	gr.GRADE = 'C')

--for this correlated subquery, "student names" are selected when:
--1. the student is enrolled in a section (where s.stno = gr.student_number)
--2. the same student has a grade of C (note the correlation in the WHERE clause
--in the inner query)


--select 1 or 'x' means returns something when the subquery is true.
--true means something is returned, false means nothing is returned from the subquery.
--therefore, select...exists "says" select... where true. The inner query is true, if 
--any row is selected in the inner query.



--now consider the preceding query with a NOT EXISTS in  it instead of EXISTS
--for students who do not have a grade of C:

select	s.sname
from	Student s
where	NOT EXISTS
	--when the subquery returns false, Not exists will be true. then select s.sname
	(select  'X'
	 from	Grade_report gr
	 where	s.STNO = gr.STUDENT_NUMBER
	 and	gr.GRADE = 'C')
	 

--to answer "which language are spoken by all students?"

select	name, langu
from	Cap x
where	not exists
					(select  'X'
					 from	Cap y
					 where	not exists
										(select 'X'
										 from	Cap z
										 where	x.LANGU = z.LANGU
										 and	y.NAME = z.NAME))


--eg 2: we have simple table cap1, when aatempting to asnwer
--the question "which language are spoken by all students?"
--"which language occurs for all times"
select	name, language
from	Cap1 x
where	not exists
		(select  'X'
		 from	Cap1 y
		 where	not exists
				(select 'X'
					from	Cap1 z
					where	x.Language = z.Language
					and		y.name = z.name))
order by	Language
--x.language = French fails because it does not occur for all the names.
--a clue of what a query of this kind means can be found in the inner query where
--the outer query is tested. In the phrase that says 'Where x.language = z.language...'
--the x.language is where the query is testing which language occurs for all names.

--The query is a SQL realization of a relational division exercise.
--"what lanuage for all names?" then the divisor, A, is names, and the quotient, B, is language.
--our column will have the column for language, x. Language, in the inner query, as language will
--be the quotient. we have chosen to also report name in the result set.


--eg 3: "which students speak all languages?"

select	 distinct name, language
from	Cap1 x
where	not exists
		(select  'X'
		 from	Cap1 y
		 where	Not exists
				(select  'X'
				 from	Cap1 z
				 where	y.Language = z.Language
				 and	x.name = z.name))

--Note that the inner query contains x.name, which means the question was
--"which names occur for all languages?" or in other words, "which students
--speak all languages?" the "all" goes with languages for x.name

--Joe H, Joe H, Joe H  Yes
--Joe H, Mary H, Joe H Yes
--Joe H, Mary F, Joe H No 
----this is false, select a second row in middle query
----there is no middle row anymore, so middle query turns 
----false to true as middle query value. Then it passed down to 
----the outer query, which turns true to false. Then Joe is not returned.

--Mary H, Joe H, Joe H   No --inner query gets no, so inner query select a second row.
--Mary H, Joe H, Mary H Yes	--pass it down to middle query, and get false,
--Mary H, Mary H, Joe H no
--Mary H, Mary H, Mary H Yes
--Mary H, Mary F, Joe H No
--Mary H, Mary F, Mary H No
--Mary H, Mary F, Mary F Yes --middle query returns false to outer query, outer query turns false to true. Get Mary H as output

--Mary F, Joe H, Joe H No		--inner query gets no, inner query select another row for inner query
--Mary F, Joe H, Mary H Yes	--inner query gets yes, outer query returns false, so continue moving to next middle row.
--Mary F, Mary H, Joe H No
--Mary F, Mary H, Mary H Yes	
--Mary F, Mary F, Joe H, No
--Mary F, Mary F, Mary H no
--mary F, Mary F, mary F yes --because it runs out of rows in middle query, and so middle query returns false. 
--							--and outerquery turns false to true. and return Mary French.
