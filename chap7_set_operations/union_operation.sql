-----------UNION Operation

--UNION takes out the duplicate results,
--if you want ordered results, use ORDER BY
SELECT	sname
FROM	Student
WHERE	MAJOR = 'COSC'
	UNION
SELECT	sname
FROM	Student
WHERE	MAJOR = 'MATH'

---Union Constants or Variables
SELECT	col1=100, col2=200
UNION
SELECT	col1=400, col2=500
UNION
SELECT	col1=100*3, col2=200*3
UNION
SELECT 900, 400

--------------------------UNION ALL Operation
----works like UNION, but it does not remove duplicates or sort the results
SELECT	sname
FROM	Student
WHERE	MAJOR = 'COSC'
	UNION ALL
SELECT	sname
FROM	Student
WHERE	MAJOR = 'MATH'


---------------Handling UNION and UNION ALL Situations with an Unequal Number of Columns
----if two sets has different number of columns, u can use NULL to fill it up.
--eg:
SELECT	c.*, NULL
FROM	Course c
WHERE	c.CREDIT_HOURS = 4
UNION ALL
SELECT	NULL, p.course_number, NULL, NULL, p.prereq
FROM	Prereq p

-----can also use other values as placeholders, as shown here:
SELECT	c.*, COU_NUM ='XXXXXXX'
FROM	Course c
WHERE	c.CREDIT_HOURS = 4
UNION ALL
SELECT 'XXXXXX', p.course_number, 0000, 'XXXXXXX', p.prereq
FROM	Prereq p