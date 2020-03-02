
--INSERT INTO ...SELECT
-- we don't have to copy all names from the employee table to the Names table
INSERT INTO Names(fullname)
	SELECT	name
	FROM	Employee

SELECT *
FROM	Names

INSERT INTO Names(fullname)
	SELECT	name
	FROM	Employee
	WHERE	salary > 2600

-- TO INSERT N COLUMNS eg: if we have a table Emp1 with (addr, sal, empno) column
/*
INSERT INTO Emp1(addr, sal, empno)
	SELECT	address, salary, employee_number
	FROM	Employee
*/

--If we created a table, Emp2, with identical columns(or attributes) as Emp1,
--we could use the following INSERT to load data from table Emp1 to Emp2
/*
INSERT INTO Emp2
	SELECT *
		FROM	Emp1
*/
