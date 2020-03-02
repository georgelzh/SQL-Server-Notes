--deleting a constraint

--alter table	tablename
--drop constraint	constraint_name

--For example, in table Test2b we created a constraint called ssn_salary_pk, which made both the ssn and salary
--columns primary keys of Test2b. If we want to delete this constraint, which means making both the ssn and
--salary columns just regular columns (and not primary keys), we would type the following:
alter table test2b
drop constraint	ssn_salary_pk

