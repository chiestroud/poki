-- 5. Starting with the above query, add the grade of each of the authors.

select TOP 76 a.*, g.Name Grade
from Author a
join Grade g
on a.GradeId = g.Id
