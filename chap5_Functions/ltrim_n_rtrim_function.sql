--the LTRIM and RTRIM functions
--removes blanks from the beginning(left) of a string.
--if three blank spaces appear to the left of a string such 
-- as '   Ranu', you can remove the blank spaces with the following query:
SELECT LTRIM('   Ranu') AS names

--smilarly, RTRIM will remove characters from the right side
SELECT RTRIM('Ranu   ') + ' Saha' AS names
