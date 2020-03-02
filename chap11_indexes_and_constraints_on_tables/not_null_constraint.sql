not null constraint denys the insertion of null value data.

--here is a eg:
create table test2
(name			varchar(20),
 ssn			char(9),
 dept_number	int not null,
 acct_balance	smallmoney
)


--you can make a variable have not null constraint by alter table command:
--suppose you created a table called test2:
CREATE TABLE Test2
(name VARCHAR(20),
ssn CHAR(9),
dept_number INT,
acct_balance SMALLMONEY)

--syntax
--ALTER TABLE Tablename
--ALTER COLUMN column_name column_type(size) NOT NULL

alter table test2
alter column dept_number	integer	not null



--properties of alter column
--The column type and size must always be typed after the column name. For example, the following
--statement will cause SQL Server 2005 to announce a syntax error:
--ALTER TABLE Test2
--ALTER COLUMN name NOT NULL


--If you type only the column type, without the column size, the column size will reset to the default
--maximum size of the data type.
--You cannot put a NOT NULL constraint on a column that already contains nulls.