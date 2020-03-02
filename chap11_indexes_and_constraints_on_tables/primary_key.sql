--create primary key constraint
--value can not be null

--there are three ways to do this.

--op1, to declare primary key while creating the table
create table test2a
(ssn			char(9) constraint	ssn_pk	primary key,
 name			varchar(20)
)


--the following two ops are preferable bc they are flexible.

--op2, to create a primary key is called the table format, like following:
create	table	test2a
(ssn			char(9),
 acct_balance	number,
 CONSTRAINT	ssn_pk	primary key (ssn)
)




---op3, add the stipulation of the primary key by using alter table command:
--alter table tableName
--Add	constraint constraint_name primary key (column_name(s))
alter table	test2a
add constraint	ssn_pk primary key (ssn)

--sql does not allow you to define a primary key on a column that has not been
--specified as NOT NULL.

alter table test2a
alter column ssn char(9) not null



