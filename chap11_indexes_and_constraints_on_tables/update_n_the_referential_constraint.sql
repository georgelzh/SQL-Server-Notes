--Both the CASCADE and NO ACTION options are also available with the ON UPDATE option of a foreign key referential
--constraint enforcement in SQL Server 2005. Both these options specify what action takes place on a row if that
--row has a referential relationship and the referenced row is updated in the parent table. In the following
--discussion, we show the syntax of these two options.

--ON UPDATE NO ACTION. Just as with the ON DELETE option, if the NO ACTION option is used with the ON UPDATE
--option of the CREATE TABLE command, and we try to update a row from the parent table (in this case, the
--Department table) that has a referencing row in the dependent table (in this case, the Employee table), then SQL
--Server 2005 will raise an error and the update action on the row in the parent table will be rolled back. The
--ACTION option on the ON UPDATE option is the default.

drop table employee1

--no action on update
create	table employee1
(empno		int		constraint	empno_pk4 primary key,
 empname	varchar(20),
 dept		int		references	department1	(deptno)
			on	update	no	action
)


CREATE TABLE employee1
(empno INT CONSTRAINT empno_pk5 PRIMARY KEY,
empname VARCHAR(20),
dept INT REFERENCES department1 (deptno)
ON UPDATE CASCADE)
