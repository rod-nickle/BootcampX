select c.name, avg(ar.completed_at - ar.started_at) as average_assistance_time
from assistance_requests ar
join students s 
on s.id = ar.student_id
join cohorts c 
on c.id = s.cohort_id
group by c.name
order by average_assistance_time desc
limit 1;