-- 11. What is the total number of poems written by fourth graders?


select count(*) [# of poems by fourth graders]
from Poem p
	join Author a
	on p.AuthorId = a.Id
		join Grade g
		on a.GradeId = g.Id
where g.Name = '4th Grade'

