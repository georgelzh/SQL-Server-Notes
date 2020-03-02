
/*
Null value has no data type. you can't compare it.
use IS NULL instead
*/

SELECT	dname, age
FROM	Dependent
WHERE	age IS NULL;


--IS NOT NULL
SELECT	dname, age
FROM	Dependent
WHERE	age IS NOT NULL; 



