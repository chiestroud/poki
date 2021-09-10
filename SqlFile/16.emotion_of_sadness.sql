-- 16. How many poems have an emotion of sadness?

select count(*) [Poems with emotion of sadness]
from Poem p
	join PoemEmotion pe
	on p.Id = pe.PoemId
		join Emotion e
		on pe.EmotionId = e.Id
where e.Name = 'Sadness'