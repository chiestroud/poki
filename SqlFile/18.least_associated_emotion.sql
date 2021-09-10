-- 18. Which emotion is associated with the least number of poems?

select TOP 1 count(*) [# of Poems],
	case
		when e.Name = 'Sadness' then 'Sadness'
		when e.Name = 'Joy' then 'Joy'
		when e.Name = 'Anger' then 'Anger'
		when e.Name = 'Fear' then 'Fear'
	end Emotion
from PoemEmotion pe
	join Emotion e
	on pe.EmotionId = e.Id
group by e.Name
order by [# of Poems]