--Using a WHERE CLAUSE instead of a JOIN
SELECT *
FROM Course c, Prereq p
WHERE c.COURSE_NUMBER=p.COURSE_NUMBER