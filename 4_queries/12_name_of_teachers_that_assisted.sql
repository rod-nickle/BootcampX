select distinct t.name as teacher, c.name as cohort
from assistance_requests ar
join teachers t
on t.id = ar.teacher_id
join students s 
on s.id = ar.student_id
join cohorts c
on c.id = s.cohort_id
where c.name = 'JUL02'
order by t.name;
