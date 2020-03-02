/*
--without aliases
SELECT	dname, age, sex
FROM	Dependent
WHERE	age >5;
*/

--Column Aliases

/* several ways to do this
SELECT	dname 'Dependent Name', age 'Dependent Age', sex 'Dependent Sex'
SELECT	dname AS [Dependent Name]
Select	[Dependent Name] = dname
Select	Name = dname, Age = age, Sex = sex
SELECT	dname Dependent_name, age Dependent_age, sex Dependent_sex

*/

--using aliases  eg. use aliases before or after column name
SELECT	dname AS Dependent_name, age AS Dependent_age, sex AS Dependent_sex
FROM	Dependent
WHERE	age >5;


--Table Aliases  make table name readable or short.
--table Aliases used as table Qualifiers, it gets useful when there is multiple query. 

--eg.

SELECT	d.dname
FROM	Dependent d
WHERE	d.age >5; --Dependent.age > 5
