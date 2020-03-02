----using subquery with operators
--get classrooms have a below-average capacity

SELECT	*
from	Room
where	CAPACITY <
	(select AVG(CAPACITY)	--one value only. can't put 
	 from	Room)