-- 17. How many poems are not associated with any emotion?

select count(*) [No emotion poem]
from PoemEmotion
where EmotionId = null