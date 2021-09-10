-- 14. What is the title of the poem that has the most words?

select TOP 1 p.Title, p.WordCount
from Poem p
order by p.WordCount desc