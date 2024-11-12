select c.name as cohort, sum(ar.completed_at - ar.started_at) as total_duration
from assistance_requests ar
join students s 
on s.id = ar.student_id
join cohorts c 
on c.id = s.cohort_id
group by c.name
order by total_duration;

