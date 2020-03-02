
/*
SELECT dname, age
FROM Dependent
ORDER BY age;



-- it's ordered by sex (alphabetically), but you don't have to select it.
SELECT dname, age, sex
FROM Dependent
ORDER BY sex;

SELECT dname, age
FROM Dependent
ORDER BY age;

-- Roni has null value in relationship. 
SELECT dname, relationship
FROM Dependent
ORDER BY RELATIONSHIP;
*/

-- ascending order
SELECT dname,age
FROM Dependent
ORDER BY age ASC;  

-- descending order
SELECT dname,age
FROM Dependent
ORDER BY age DESC;

--order within an order
SELECT dname,sex, age
FROM Dependent
ORDER BY sex/*DESC*/, age DESC;  