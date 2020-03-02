---------------------CONVERSION Fuction
--functions that convers datatype: CAST, CONVERT, STR


----------The CAST Function - changes a data type of a column
--its result can be used for:
--Concatenating strings
--Joining columns that were not envisioned as related
--performing unions of tables
--performing mathematical operations on columns that were defined 
--as character but which actually contains numbers that need to be calculated.

--Syntax: CAST (original_expression AS desired_datatype)
--Converting nums with decimal places to integer data types truncates values
--to the right of the decimal place without a warning, so you should use CAST if 
--a loss of precision is possible.

--Convert hours to character from Employee4sumfunction table
SELECT names, wage, hours = CAST(hours AS CHAR(2)) + ' hours worked per week'
FROM Employee4SumFunction





-------------------------The STR Function___converts from a number to a character data type
--it allows you to explicitly specify the length and number of decimal places that should be formatted 
--for the character string.
--Syntax STR(float_expression, (opt)character_length, (opt)number_of_decimal_places)
--it rounds a value to the number of decimal places requested

--hours column is SMALLINT, to format it to two decimal places, we can use STR.
--we need character length 5 in this case to accommodate the .00 :
SELECT names, wage, hours = STR(hours, 5, 2)
FROM Employee4SumFunction




---------------------------The CONVERT Function
/*
Convert function has additional limited formating capabilities.
the syntax: CONVERT(desired_datatype[(length)], original_expression [, (opt)style])
It's widely used to display dates in a particular format because of its style.
*/

