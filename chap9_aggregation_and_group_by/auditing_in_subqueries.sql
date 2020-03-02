--we will consider a potential problem of using aggregation with
--subqueries. As with Cartesian products and joins, aggregation hides
--details and should always be audited. the two tables that follow will
--be used to illustrate this problem.

---gg table has section identifier (ssec), grades (gd) and names(sname)
---ss table has section identifier sec, and instructor name(iname)

--to find out how many as each instructor awarded,  we join gg and ss
select	*
from	gg, ss
where	gg.ssec = ss.sec

--get the number of As
select	count(*) as [count of As]
from	gg
where	gd = 'A'


--now to find out which instructor gave the As, you would type:
select	ss.iname
from	ss, gg
where	ss.sec = gg.ssec
and		gg.gd = 'A'


--now to find 'how many' as each instructor gave, include a count
--and group by as follows:
select	ss.iname as [iname], count(*) as [count]
from	ss, gg
where	ss.sec = gg.ssec
and		gg.gd = 'A'
group by ss.iname


--now if you have devised a count query with a sub-select, you could 
--get an answer that looked correct but in fact was not. eg:
select	ss.iname as [iname], count(*) as [count]
from	ss
where	ss.sec in
	(select	gg.ssec
	 from	gg
	 where	gg.gd = 'A')
group by ss.iname



--this query gives the correct answer to question "in how many sections
--did the instructor award an A?" instead of "how many As did each instructor
--award?"

