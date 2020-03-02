--------------GROUP BY-------

--group by is a select stgroup by is a select statement clause that is designed
--to be used in conjunction with aggregation to group data of similar types. 
--An aggregate function is one that extracts information such as a count of rows,
--or an average, mininum, or maximum by operating on multiple rows. 
--we will discuss it using one column, two column. Then we look at how to use 
--group by in conjunction with the order by, having, and where clause.

--BNF,short for Backus Naur Form, is used to describe syntax rules.
--For group by with having, order by would be:

--select	result-set
--[from	tables]
--[where	row-filter]
--[group	by column names]
--[having	after-filter on groups]
--[order by	column names]

--group by is used in conjunction with aggregate funcions to group data on the 
--basis of the same values in a column. group by returns one row for each value
--of the columns that is grouped. You can use group by to group by one column
--or multiple columns. 

--eg shows how u use aggregate count to extract the number of class groups
--(number of student in each class) from student table:
select	class, count(*) as [count]
from	Student
group by	CLASS


--group by two columns
select	class, major, count(*) as [count]
from	Student
group by class, MAJOR --group by class within major


select	class, major, count(*) as [count]
from	Student
group by MAJOR, CLASS --group by major within class


----error syntax. You must have all aggregate column in group by clause
--select	class, major, count(*) as [count]
--from	Student
--group by CLASS	--returns error

--eg 2
select	ohead,	sum(capacity) as [sum]
from	room
group by ohead




-------------use group by and order by
--result set can be ordered by any other column from the result set using
--order by. for instance, the following eg orders the output in descending
--order by COUNT(*)
select	class, major, count(*) as [count]
from	Student
group by class, MAJOR --group by class within major
order by count(*) desc



-----------------------------WARNING!!!: GROUP BY and DISTINCT---------------------------
--group by clause groups rows in such a way tha columns are grouped will not
--have duplicate values. So don't use DISTINCT when you use group by. it's waste of efficiency.
