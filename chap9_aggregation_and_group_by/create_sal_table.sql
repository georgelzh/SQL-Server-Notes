create table sal
(name	varchar(20),
 salary	smallmoney
)

insert into sal
values('Joe', 1000)

insert into sal
values('Sam', 2000)

insert into sal
values('Bill', 3000)

insert into sal
values('Dave', null)


select *
from	sal