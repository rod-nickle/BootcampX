select a.day, count(*) as number_of_assignments, sum(duration) as duration
from assignments a
group by a.day
order by a.day;
