------------------------Temporary table
/*
Data in temporary is static and not reflective of updates to the 
original tables(s). temporary tables may also allow you to develop SQL
queries in a step-by-step manner and may be used to simplify complex queries.

Can't have foreign key constraints on a temporary table
*/

---create temporary table #
/*
SELECT column_name, ..., column_name INTO #local_temporary_tablename
FROM permanent_tablename
WHERE...
*/

SELECT	s.sname, s.stno, d.dname, s.class INTO #Temp1
FROM	Student AS s, Department_to_major AS d
WHERE	s.MAJOR = d.Dcode
AND		(s.CLASS = 1 or s.CLASS = 2)
AND		s.MAJOR = 'COSC';

SELECT	*
FROM	#Temp1

---creating global temporary tables
/*
SELECT column_name, ..., column_name INTO ##global_temporary_tablename
FROM permanent_tablename
WHERE...
*/

SELECT	s.sname, s.stno, d.dname, s.class INTO ##Temp1
FROM	Student AS s, Department_to_major AS d
WHERE	s.MAJOR = d.Dcode
AND		(s.CLASS = 1 or s.CLASS = 2)
AND		s.MAJOR = 'COSC';

SELECT	*
FROM	##Temp1

---------------Updating temporary table does not change original table

--deleting temporary table
DROP TABLE ##Temp1

