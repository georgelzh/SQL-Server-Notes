----check constraint
--A CHECK constraint will disallow a value that is outside the bounds of the
--CHECK. Consider the following example:

create table studentA
(ssn		char(9),
 class		int,
	constraint	class_ck	check (class between 1 AND 4),
name		varchar(20)
)


--Once the CHECK constraint has been added, we could not, for example, successfully execute the following
--INSERT:
INSERT INTO StudentA VALUES ('123456789', 5, 'Smith')

