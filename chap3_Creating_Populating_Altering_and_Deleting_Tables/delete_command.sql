--DELETE Command
--When the table is DELETED, it could be repopulated 
--because only the data from the table was removed, but the definition is intact.
--be careful when using this command, because it can deletes multiple rows
-- it could delete everything.

--eg:

DELETE FROM Employee
WHERE salary < 1500

SELECT *
FROM Employee

--DELETING A TABLE    DROP TABLE TableName
--When a table is DROPPED, it no longer exists.
--eg:
DROP TABLE Names -- Names is a table inside Employee database