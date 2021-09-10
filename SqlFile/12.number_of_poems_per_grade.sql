-- 12. How many poems are there per grade?


select count(*) [# of Poems],
	case
		when g.Name = '1st Grade' then '1st Grade'
		when g.Name = '2nd Grade' then '2nd Grade'
		when g.Name = '3rd Grade' then '3rd Grade'
		when g.Name = '4th Grade' then '4th Grade'
		when g.Name = '5th Grade' then '5th Grade'
	end Grades
from Poem p
	join Author a
	on p.AuthorId = a.Id
		join Grade g
		on a.GradeId = g.Id
group by g.Name

