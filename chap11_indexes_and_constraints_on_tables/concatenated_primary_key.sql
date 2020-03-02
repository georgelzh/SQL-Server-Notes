------------concatenated primary keys

--In relational databases, it is sometimes necessary to define more than one column as the primary key. When
--more than one column makes up a primary key, it is called a concatenated primary key. In SQL Server 2005,
--however, you cannot directly designate a concatenated primary key with a statement like the following:


CREATE TABLE Test2a
(ssn CHAR(9) PRIMARY KEY,
salary INT PRIMARY KEY)


--here is how you can do it:
create table test2b
(ssn		char(9),
 salary		int,
 constraint	ssn_salary_pk	primary key (ssn, salary)
)


--or you can create it in two seperated statements, first:
create table test2c
	(ssn	char(9) not null,
	 salary	int		not null)

--then with an alter table:
alter table test2c
add	constraint	ssn_salary_pk1 primary key (ssn, salary)
--can't have the same primary key name like the one in test2b



--Another example of a concatenated primary key. Suppose that we have a new table in our database,
--Grade1, which has columns student_number, section_id, and grade. Further suppose that a grade cannot be
--determined by either the student_number or section_id alone. Because both these columns (together) are
--required to uniquely identify a grade, the student_number and section_id will have to be the concatenated
--primary key of the Grade1 table.

--The CREATE TABLE and ALTER TABLE sequence for creating the Grade1 table with the concatenated primary key as
--is shown next. First we create the Grade1 table:

create table grade1
	(student_number		char(9) not null,
	 section_id			char(9) not null,
	 grade				char(1))

alter table grade1
add constraint snum_section_pk	primary key (student_number, section_id)

