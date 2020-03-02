-------------------------DATA Functions
--Control shift + U will capitalize the keywords in the query


--make a data table for learning this function section
CREATE TABLE DateTable (birthdate		SMALLDATETIME,
						school_date		SMALLDATETIME,
						names			VARCHAR(20))

INSERT INTO DateTable
VALUES ('10-oct-01', '12/01/2006', 'Mala Sinha')  --single quotes are required around date values
INSERT INTO DateTable
VALUES ('02-feb-02', '03/02/2006', 'Mary Spencer')  --single quotes are required around date values
INSERT INTO DateTable
VALUES ('02-oct-02', '02/04/2005', 'Bill Cox')  --single quotes are required around date values
INSERT INTO DateTable
VALUES ('29-dec-1998', '05/05/2004', 'Jamie Runner')  --single quotes are required around date values
INSERT INTO DateTable
VALUES ('16-jun-1999', '03/03/2003', 'Seema Kapoor')  --single quotes are required around date values

--Next
SELECT *
FROM DateTable

/*
--------------------Default Date Formats and Changing Date Formats
SQL SERVER reads and displays default format yyyy/mm/dd format
we can change the format in which SQL Server reads in dates by 
using SET DATEFORMAT. DATEFORMAT controls only how SQL Server 2005 
interprets date constants, it does not control how it displays it.
*/

--eg: to have SQL read the day, then month, then year. we do:
SET DATEFORMAT dmy
SELECT 'Format is yyyy/mon/dd' = CONVERT(datetime, '10/2/2003')

/*
two-digit year dates are entered, sql server default behavior is to interpret the year as 19yy,
if the value is greater than or equal to 50 and as 20yy if the value is less than 50
*/


----------------------------DATE Function
/*
we will have DATEADD, DATEDIFF, DATEPART, YEAR, MONTH, DAY and GETDATE
*/

-------------------DATEADD function produces a date by adding a specified number to a specified part of a date
--format DATEADD(datepart, number, date_field)

--eg: to add 2 days to the birthdate of every person in DateTable we would type:
SELECT names, 'Add 2 days to birthday' = DATEADD(dd, 2, birthdate)
FROM DateTable

--eg: to minus 2 days to the birthdate of every person in DateTable we would type:
SELECT names, 'Add 2 days to birthday' = DATEADD(dd, -2, birthdate) --dd can be mm, yy
FROM DateTable



---------------------DATEDIFF function
--returns difference between two parts of a date:
--format: DATEDIFF(datepart, date_field1, date_field2)
--to find number of months between the two fields, birthdate and 
--school_date of every person in DateTable:
SELECT names, 'Months between birth date and school date' = DATEDIFF(mm, birthdate, 
school_date)
FROM DateTable




---------------------DATEPART Function
--returns the specified part of the date requested
--format DATEPART(datepart, date_field)

--eg: find year from the birthdate of every person
SELECT birthdate, 'Years ' = DATEPART(yyyy,birthdate)
FROM DateTable



---------------------YEAR Function
--extract the year from a value stored as a SMALLDATETIME data type

--eg: to extract the year from school_date column of every person in DateTable:
SELECT names, YEAR(school_date) AS [Kindergarten Year]
FROM DateTable

--eg 2: find year difference with YEAR function
SELECT names, YEAR(school_date)-YEAR(birthdate)
FROM DateTable


----------------------MONTH function
--extract month from a date. 

--eg : get birth month and add 6 months to it.
SELECT names, birthdate, MONTH(birthdate) as [Birth Month], ((MONTH(birthdate))+6)
AS [Sixth month]
FROM DateTable


------------------------DAY Function
--extract the day of the month from a date

--eg: to find the day from the birthdate of every person in DateTable:
SELECT names, birthdate, DAY(birthdate) as [Date of Birth]
FROM DateTable



-----------------------The GETDATE function
SELECT 'Today ' = GETDATE()

--To find numbers of years since everyone's birthdate entered in our Datetable and current date.
SELECT names, 'Numbers of years ' = DATEDIFF(yy, birthdate, GETDATE())
FROM DateTable



----------------------Inserting the current date and time
--add a new row to our DataTable, insert the current date and time
--into the birthdate column of this row using the GETDATE() function, and then
--add five years to the current date for the school_date column of this new row:
INSERT INTO DateTable
VALUES (GETDATE(), GETDATE()+YEAR(5), 'Piyali Saha')

SELECT *
FROM DateTable