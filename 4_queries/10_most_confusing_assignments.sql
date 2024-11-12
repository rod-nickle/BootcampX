select a.id, a.name, a.day, a.chapter, count(*) as total_requests
from assignments a
join assistance_requests ar
on ar.assignment_id = a.id
group by a.id, a.name, a.day, a.chapter
order by total_requests desc;