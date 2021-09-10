-- 5. Starting with the above query, add the recorded gender of each of the authors.

select TOP 76 a.*, g.Name Grade, ge.Name Gender
from Author a
	join Grade g
	on a.GradeId = g.Id
		join Gender ge
		on a.GenderId = ge.Id 
