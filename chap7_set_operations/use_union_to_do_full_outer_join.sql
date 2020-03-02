-------A UNION Used to Implement a Full Outer Join
--syntax

--SELECT	with right outer join
--UNION
--SELECT	with left outer join

--eg:
SELECT	*
FROM	Department_to_major AS d LEFT JOIN	Instructor AS i
ON		d.Dcode = i.teaches
	UNION
SELECT	*
FROM	Department_to_major AS d RIGHT JOIN	Instructor AS i
ON		d.Dcode = i.teaches


