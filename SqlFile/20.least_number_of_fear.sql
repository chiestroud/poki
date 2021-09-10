-- 20. Which grade has the largest number of poems with an emotion of joy?

select TOP 1 count(*) [Least emotion of fear],
	case
		when ge.Id = 1 then 'Female'
		when ge.Id = 2 then 'Male'
		when ge.Id = 3 then 'Ambiguous'
		when ge.Id = 4 then 'N/A'
	end Gender
from Poem p
	join Author a
	on p.AuthorId = a.Id
		join Gender ge
		on a.GenderId = ge.Id
			join PoemEmotion pe
			on p.Id = pe.PoemId
				join Emotion e
				on pe.EmotionId = e.Id
where e.Name = 'Fear'
group by ge.Id
order by [Least emotion of fear]
