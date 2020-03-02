--Referential Integrity Constraints

--A foreign key is a column in one table that is used to link that table to another table in
--which that column is a primary key. Relationships are implemented in relational
--databases through foreign keys/primary key relationships.

--In the INSERT and UPDATE cases discussed earlier, you would expect (correctly) that the usual action of the
--system would be to deny the action. In SQL Server 2005, in the case of the DELETE and UPDATE commands,
--there is an option available that will allow us to CASCADE the DELETE or UPDATE operations respectively. Whereas
--an "ordinary" referential integrity constraint would simply disallow the deletion of a row where the referenced
--row would be orphaned, a CASCADEd delete would delete the referencing row as well. If, for example, in the
--previous data we deleted department 3, in a CASCADEd delete situation, the referencing row in the Employee
--<104,Harris,3>, would be deleted as well.

create table department1
(deptno			int,
 deptname		varchar(20),
 constraint		deptno_pk1	primary key (deptno)
 )


create table employee1
(empno			int	constraint	empno_pk1	primary key,
 empname		varchar(20),
 dept			int	constraint	dept_fk	references	department1 (deptno))

