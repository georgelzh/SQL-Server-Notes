--Cartesian Product
/*
Every row of the first table in the FROM clause is
joined with each and every row of the second table in the
FROM clause.

A Cartesian product is produced when the WHERE form of the JOIN is used without the WHERE.
eg:
*/

SELECT COUNT(*)		--count the number of rows
FROM Course c, Prereq p

SELECT *
FROM Course c, Prereq p

/*Uses of the Cartesian Product
The Cartesian product can be used to generate sample or test data
The simplest cartesian product of two sets is a two dimensional table or a corsstabulation whose
cells may be used to enter frequencies or to designate possibilities
The cartesian product is needed if you want a collection of all ordered n-tuples(rows with n columns)
that can be formed so that they contain one element of the first set, one element of the second set,
...and one element of the nth set. such as set X is the 13 element set (1-13), set Y is 4 element
set(spades, hearts, diamond, clubs), then the cartesian product of those two sets is 52-element set(a deck).
*/