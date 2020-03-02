------------when_join_cannot_be_turned_into_subquery--
--when you need information from two different table, you have to join them.
--subquery is more like a filtering condition.

SELECT	STUDENT.SNAME, STUDENT.STNO
FROM	STUDENT
WHERE	STUDENT.STNO
IN		(SELECT GR.STUDENT_NUMBER
		 FROM	GRADE_REPORT GR
		 WHERE	GR.GRADE = 'B' OR GR.GRADE = 'A')
ORDER BY STUDENT.STNO



---following join query  asks info from both student and grade_report
SELECT	Student.SNAME, gr.grade
FROM	Student join Grade_report gr
where	Student.STNO = gr.STUDENT_NUMBER
and		(gr.GRADE = 'B' or gr.GRADE = 'A')


