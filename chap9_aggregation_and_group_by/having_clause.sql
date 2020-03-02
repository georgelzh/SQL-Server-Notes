--group by and HAVING clause are used together. the having clause 
--is used as a final filter (rather than as a conditional filter) 
--on the aggregate column values.

--query has to be grouped before using having clause.

--eg 
select	class, count(*) as [count]
from	Student
group by CLASS


--get classes have more than a certain number of students in them. 
select	class, count(*) as [count]
from	Student
group by CLASS
having count(*) > 9
