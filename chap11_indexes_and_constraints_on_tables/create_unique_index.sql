--To prevent duplicate values in indexed columns, you must use the UNIQUE option in the CREATE INDEX
--statement, as follows:

create unique index ssn_ndex1
on	test1 (ssn DESC)


--The UNIQUE option can be used on columns that will not be a primary key in a table. A primary key is a
--The UNIQUE option will disallow duplicate entries for a column even though the column is not a primary
--key in a table. NULLs are allowed in nonprimary key indexes

