--The UNIQUE Constraint

--Like PRIMARY KEY, UNIQUE is another column integrity constraint. UNIQUE is different from PRIMARY KEY in three
--ways:
--UNIQUE keys can exist in addition to (or without) the PRIMARY KEY.
--UNIQUE does not necessitate NOT NULL, whereas PRIMARY KEY does.
--There can be more than one UNIQUE key, but only one PRIMARY KEY.
--As an example of using the UNIQUE constraint, suppose that we created a table of names and occupational titles
--in which everyone was supposed to have a unique title. Further suppose that the table had an employee
--number as a primary key. The statement to create the table might look like the following:

create table emp
(empno		int,
 name		varchar(20),
 title		varchar(20),
 constraint	empno_pk	primary key (empno),
 constraint	title_uk	unique (title)
)

