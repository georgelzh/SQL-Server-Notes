--having and where

--where clause excludes rows from a result set, is a conditional filter.
--having is used to filter based on aggregate values, where cannot.  consider this

--eg 1
select	class, count(*) as [count]
from	Student
group by CLASS
having	CLASS = 3

--eg 2
--where is calculated before group. sometimes use where is faster than having
select	class, count(*) as [count]
from	Student
where	CLASS = 3
group by CLASS

--eg 1 is less efficient than eg 2 because it has to complete the query before
--removing rows where class = 3 from the result. 


--consider this
select	class, count(*) as [count]
from	Student
group by CLASS
having	count(*) > 9


--eg 4
select	class, count(*) as [count]
from	Student
where	MAJOR = 'COSC'
group by class, major
having	count(*) > 2

--the interpretation of eg 4 should be in order.
--sql applies the where, then applies the group by,
--and finally, filters with the having criterion.
