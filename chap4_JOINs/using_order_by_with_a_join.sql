--Using ORDER By with a Join
--ORDER BY can be used in joins to order the result set.

--method 1:

SELECT c.COURSE_NAME, c.COURSE_NUMBER, c.CREDIT_HOURS, c.OFFERING_DEPT, p.PREREQ
FROM Course c JOIN Prereq p
ON c.COURSE_NUMBER = p.COURSE_NUMBER
where	c.COURSE_NAME like 'data%'
and		c.COURSE_NUMBER like '%320%'
ORDER BY c.COURSE_NUMBER


--method 2 - --  -- -- different way to do it.
SELECT c.COURSE_NAME, c.COURSE_NUMBER, c.CREDIT_HOURS, c.OFFERING_DEPT, p.PREREQ
FROM Course c JOIN Prereq p
ON c.COURSE_NUMBER = p.COURSE_NUMBER
ORDER BY 2  -- 2 means order it by the second column of the result set.
