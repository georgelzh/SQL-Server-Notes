--ALTER TABLE
--Adding a Column to a table

/*
ALTER TABLE Tablename
ADD column-name type
*/

--Adding a column to a table eg:
ALTER TABLE Employee
ADD bonus SMALLMONEY

--Changing a column's data type in a table
/*
ALTER TABLE Tablename
ALTER COLUMN column-name new_type
*/

ALTER TABLE Employee
ALTER COLUMN bonus FLOAT

--changing a column's length in a table
--it's okay when..
--you do not have any data in that column yet
--all the data in the column is still less than the size you are changing the column to.
