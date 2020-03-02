--Using the ON DELETE and ON UPDATE together

--You can also use the ON DELETE and ON UPDATE options together if needed

drop table employee1

create table employee1
(empno		int	constraint	empno_pk6	primary key,
 empname	varchar(20),
 dept		int	references	department1 (deptno)
			on update	cascade
			on delete	no action)