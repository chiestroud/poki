-- 9.How many authors are in the third grade?


select count(*) [Third Grades Authors]
from Author a
	join Grade g
	on a.GradeId = g.Id
where g.Name = '3rd Grade'
