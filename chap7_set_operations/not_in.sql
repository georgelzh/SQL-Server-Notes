--------Using NOT...IN
/*
not recommended to use because it has to test the set with all values
to find out what is not in the set. if the table is big, the performance will be poor.
here we learn it to understand SQL better.
When NOT...IN is used, no indexing can be used

Instead of NOT...IN, use NOT EXISTS or outer join techniques
*/

SELECT	sname, class
FROM	Student
WHERE	CLASS NOT IN (2) -- make sure the class is not in the set of (2)

---be careful, you can get NULL value
SELECT	sname, class
FROM	Student
WHERE	CLASS NOT IN ('COS', 'MATH')

SELECT	*
FROM	Stumajor
WHERE	major IN('Chemistry', 'Biology')

---It returns NULL value haha!
SELECT	*
FROM	Stumajor
WHERE	major NOT IN ('Chemistry', 'Biology')


-------Using NOT...IN in a subquery
--find all departments that do not have instructors
--this time, it showed NULL value
SELECT	*
FROM	Department_to_major d
WHERE	d.Dcode NOT	IN
	(SELECT	Dcode
	 FROM	Department_to_major d, Instructor i
	 WHERE	d.Dcode=i.teaches)

