-- 8.Which poem has the fewest characters?


select TOP 1 *
from Poem
order by CharCount
