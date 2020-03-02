--Group by and Having: aggregates of aggregates

select	count(stno) as [count of student no], CLASS
from	Student
group by CLASS


select	count(stno) as [count of student no]
from	Student
group by CLASS


--you don't have to have the columns in the result set that you are
--grouping. that process may be usedful when a grouped result is needed
--in a filter. for eg, how would u find the class with the most students?



-----------fail to find class with the minimum number of students with two aggregatio
--select	MIN(count(stno))
--from	Student
--group by CLASS

to handle this kind of case, Using either a temporary table or an inline view is the most
logical way. Here are examples below.


-----------------------Aggregation and grouping handled with a global temporary table

--1. display the count of classes, grouped by class:
select	count(stno) as [count of student no]
from	Student
group by CLASS

--MAKE count of stno into global temporary table
select	(count(stno)) as [count], class into ##Temp1
from	Student
group by class

--after running previous query, type:
select	count(stno) as [count of stno], class
from	Student
group by CLASS
having	count(stno) = 
(select min(count) as [minimum count]
from ##Temp1)


-------------------aggregation and grouping handled with an inline view
--count stno in the from clause of the select statements as  follows:
select	"Min of Count" = MIN(c)
from	(select c = count(stno)
from	Student
group by CLASS) as in_view


to find out which class has the minimum count, you can write the final query
using the previous query as a subquery with a Having clause in the outer part
of the final query, as follows:

select	class, "count of class" = count(*)
from	Student
group by CLASS
having	count(*) =
(select	MIN(c)
from	(select c = count(stno)
from	Student
group by CLASS) as in_view)


--use your knowledge of temporary tables and inline views to work around the problem