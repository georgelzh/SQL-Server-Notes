--DELETE and the referential CONSTRAINT

--There are a couple of options in the DELETE option of a foreign key referential constraint in SQL Server 2005--
--CASCADE and NO ACTION. Both of these options specify what action takes place on a row if that row has a
--referential relationship and the referenced row is deleted from the parent table. First we discuss the default,
--which is NO ACTION, and then we look at the CASCADE option.

--ON DELETE NO ACTION. If the NO ACTION alternative is used in the ON DELETE option of the CREATE TABLE
--command, and we try to delete a row from the parent table (in this case, the Department table) that has a
--referencing row in the dependent table (in this case, the Employee table), then SQL Server 2005 will raise an
--error and the delete action on the row in the parent table will be undone. The NO ACTION option on the ON DELETE
--option is the default.

-----------------------NO ACTION
--drop previous table
drop table employee1

create table employee1
(empno			int		constraint	empno_pk2 primary key,
 empname		varchar(20),
 dept			int		references	department1 (deptno)
				on	delete	no action)

				

--ON DELETE CASCADE. The ON DELETE CASCADE option may be added after the REFERENCES clause of a CREATE
--TABLE command, as shown here:
CREATE TABLE Employee
(empno INT CONSTRAINT empno_pk3 PRIMARY KEY,
empname VARCHAR(20),
dept INT REFERENCES Department(deptno)
ON DELETE CASCADE)


--CASCADE will allow the deletions in the dependent table (in this case, the Employee table) that are affected by the
--deletions of the tuples in the referenced table (in this case, the Department table). Suppose, for example, that
--we had deptno = 3 in the Department table. Also suppose that we had employees in department 3. If we deleted
--department 3 in the Department table, then with CASCADE we would also delete all employees in the Employee
--table with dept = 3.


--When CASCADE is included in the ON UPDATE option, the row is updated in the referencing table (in this case, the
--Employee table) if that row is updated in the parent table (in this case, the Department table).