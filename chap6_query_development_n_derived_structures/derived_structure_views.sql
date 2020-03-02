----------------------Derived Structure-------------
--------views and temporary tables-----------------

------------views------------
/* usage:
1. help to develop a query step by step
2. can be used to restrict a set of users from seeing part of the database
in a multiuser system----considered a security feature
3. Views provide a layer of abstraction to data, facilitating backward 
compatibility and horizontal and vertical partitioning of data.
4. View provide a seamless way to combine data from multiple souces
5. Views do not occupy much disk space, as they have no data of their own. 
6. Use view as it is a table
7. view can be used to create other views or queries
*/

--Creating views
CREATE VIEW namemaj AS
SELECT	sname, major
FROM	Student

---Using views
SELECT *
FROM namemaj

SELECT	n.major AS [Major], n.sname AS [Student Name]
FROM	namemaj AS n, Department_to_major AS d
WHERE	n.major=d.Dcode
AND		d.DNAME LIKE 'COMP%'

---ODER BY in views it does not work when you create a view
CREATE VIEW namemaj1 AS
SELECT		sname, major
FROM		Student
ORDER BY	sname

---can be used in the from clause after view is created
SELECT	*
FROM	namemaj
ORDER BY MAJOR

---SELECT INTO in views (can't use this)
CREATE VIEW new_view AS
SELECT		* INTO new_view
FROM		Employee

--you can use SELECT INTO after the view is created
CREATE VIEW new_view AS
SELECT		*
FROM		namemaj
WHERE		MAJOR = 'MATH'

SELECT * INTO copy_of_new_view
FROM new_view

SELECT *
FROM copy_of_new_view

--column aliases in views
CREATE VIEW	namemaj2 AS
SELECT		sname AS [name], major AS [maj]
FROM		Student
WHERE		MAJOR = 'COSC'


SELECT *
FROM namemaj2

SELECT	namemaj2.[name], namemaj2.[maj]
FROM	namemaj2
WHERE	namemaj2.[name] LIKE 'J%'

SELECT	n.[name], n.[maj]
FROM	namemaj2 AS n
WHERE	n.[name] LIKE 'J%'


---------------DATA in views, it's connected to the original data
-------------IF you change view, you changed original as well

CREATE VIEW Employee_view AS
SELECT		names
FROM		Employee4SumFunction

SELECT *
FROM Employee_view

--to update data in view
UPDATE	Employee_view
SET		names = 'Mala Saha'
WHERE	names LIKE 'Priya%'

SELECT *
FROM	Employee_view

SELECT	*
FROM	Employee4SumFunction

-------------------------DELETING views
DROP VIEW Employee_view