--------more examples
--find name of all departments that offers a course with INTRO in the title

select	d2m.dname
from	Department_to_major d2m
where	d2m.Dcode
in		(select c.OFFERING_DEPT
		 from	Course c
		 where	c.COURSE_NAME like '%INTRO%')


--eg 2
--find students name, student major code, section id of students
--who earned Cs in courses taught by Professor Hermano

select	s.SNAME, s.MAJOR, gr.SECTION_ID
from	Student s, Grade_report gr
where	gr.STUDENT_NUMBER = s.STNO
and		gr.GRADE = 'C'
and		gr.SECTION_ID in
	(select	t.section_id
	 from	Section t
	 where	t.INSTRUCTOR like 'hermano')



--eg 3, list the name and major code of students who 
--earned Cs in courses taught by professor King
select	s.SNAME, s.MAJOR
from	Student s
where	s.STNO
in		(select gr.student_number
		 from	Grade_report gr
		 where	gr.GRADE = 'C'
		 and	gr.SECTION_ID
		 in		(select se.SECTION_ID
				 from	Section se
				 where	Instructor like 'king'))


select	distinct s.sname, s.major
from	Student s JOIN Grade_report gr
ON		s.STNO = gr.STUDENT_NUMBER
where	gr.GRADE = 'C'
and		gr.SECTION_ID
in		(select se.SECTION_ID
		 from	Section se
		 where	INSTRUCTOR like '%KING%')