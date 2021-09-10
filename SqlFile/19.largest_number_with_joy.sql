-- 19. Which grade has the largest number of poems with an emotion of joy?

select TOP 1 count(*)[Poems with Joy],
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
			join PoemEmotion pe
			on p.Id = pe.PoemId
				join Emotion e
				on pe.EmotionId = e.Id
where e.Name = 'Joy'
group by g.Name
order by [Poems with Joy] desc