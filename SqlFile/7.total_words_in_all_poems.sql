-- 7.What is the total number of words in all poems in the database?


select SUM(WordCount) [Total number of words]
from Poem
