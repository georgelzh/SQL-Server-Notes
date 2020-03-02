--NULLs Revisited

--using aggregation functions by themselves on columns that contains
--nulls will ignore the null values. eg, suppose you have the following table called sal

select	count(*) as [count], avg(salary) as [average], sum(salary) as [sum],
max(salary) as [max], min(salary) as [min]
from	sal

--counting columns also indicates the presence of nulls, see follow:
select	count(name) as [count of names]
from	sal

---if you use "salary" column, you get:
select	count(salary) as [count of salary]
from	sal



--use ISNULL function if you want to include nulls in the aggregate 
--and have a rational value to substitute for a value that is not known
select	name, ISNULL(salary, 0) as [salary]
from	sal


--if you type follow
select	count(ISNULL(salary, 0)) as [count of salary]
from	sal

--if you type following:
select	avg(ISNULL(salary,0)) as [Average of salary]
from	sal



--When grouping is added to the query, nulls in the grouped column are included
--in the result set. so if the sal table had another column like
--name                 salary					job
---------------------- ----------------------------------
--Joe                  1000.00				Programmer
--Sam                  2000.00				NULL
--Bill                 3000.00				Plumber
--Dave                 0.00					Programmer

--and if you run a query like this:
--select	sun(salary) as [sum of salary], job
--from	sal
--group by job

--you would get this:

--sum of salary		job
-----------------------------
--2000.00				NULL
--3000.00				Plumber
--1000.00				Programmer

--the aggregate will ignore values that are null, but grouping
--will compute a value for the nulled column value.
