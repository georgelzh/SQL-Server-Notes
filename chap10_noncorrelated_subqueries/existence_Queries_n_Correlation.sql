--Existence Queries and Correlation

--to find name of students who take Computer science and got B
--noncorrelated subquery as follows:

select	s.sname
from	Student s
where	s.STNO in 
	(select  gr.student_number FROM Grade_report gr, Section
	 where	Section.SECTION_ID = gr.SECTION_ID
	 AND	section.COURSE_NUM like 'COSC%'
	 And	gr.GRADE = 'B')

--To write the query with an unnecessary correlation, it looks like this:
select	s.sname
from	Student s
where	s.STNO in
	(select  gr.student_number
	 from	 Grade_report gr, Section
	 where	 Section.SECTION_ID = gr.SECTION_ID
	 AND	 Section.COURSE_NUM like 'COSC%'
	 AND	 gr.STUDENT_NUMBER = s.STNO
	 AND	 gr.GRADE = 'B')