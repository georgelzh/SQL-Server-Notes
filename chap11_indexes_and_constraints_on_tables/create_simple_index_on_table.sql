create table test1
(name		varchar(20),
 ssn		char(9),
 dept_number	int,
 acct_balance	smallmoney
)

--simple create index
--create index index_name
--on tableName (column [ASC | DESC])

--if we want to create an index called ssn_ndx on ssn column, in descending order
--of ssn, for the test1 table, we would type:

create index ssn_ndx
on test1  (ssn DESC)
--ASC is default order for index


--Indexes cannot be created on all column types in SQL Server 2005. For
--example, you cannot create an index on a column of TEXT, NTEXT, or IMAGE data
--type.