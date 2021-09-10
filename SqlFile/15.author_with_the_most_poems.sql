-- 15. Which author(s) have the most poems? (Remember authors can have the same name.)

select TOP 1 a.Id, a.Name, count(*) [Number of Poems]
from Poem p
	join Author a
	on p.AuthorId = a.Id
group by a.Id, a.Name
order by [Number of Poems] desc