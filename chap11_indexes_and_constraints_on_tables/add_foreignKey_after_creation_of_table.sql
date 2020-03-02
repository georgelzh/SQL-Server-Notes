Adding the foreign key after tables are created
As we have seen with other constraints, the foreign key can be added after tables are created. To do so, we
must first have set up the primary key of the referenced table. The syntax of the ALTER TABLE command to add a
foreign key to a referencing table would look like this:

alter table	xxx
	add constraint	dept_fk
	foreign key	(dept)
	references	department (deptno)


--The (optional) name of the CONSTRAINT is dept_fk. Note that the column's data types in the references clause
--must agree with the column's data types in the referenced table.