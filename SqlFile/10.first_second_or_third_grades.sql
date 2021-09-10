-- 10.How many authors are in the first, second or third grades?


select count(*) Count,
	case 
		when g.Name = '1st Grade' then '1st Grade' 
		when g.Name = '2nd Grade' then '2nd Grade'
		when g.Name = '3rd Grade' then '3rd Grade'
		else 'Others'
	end Grade
from Author a
	join Grade g
	on a.GradeId = g.Id
group by g.Name


