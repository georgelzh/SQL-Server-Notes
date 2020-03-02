

--to see the first 10 rows of the dependent table
--after using ROWCOUNT, you should reset the ROWCOUNT
SET ROWCOUNT	10
SELECT	*
FROM	Dependent;

--If you don't reset the ROWCOUNT, you will always get the rows of results you set before. 
SELECT	*
FROM	Dependent;

SET ROWCOUNT	0;	--reset ROWCOUNT back

--after reset it
SELECT	*
FROM	Dependent;