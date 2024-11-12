select t.name as teacher, s.name as student, a.name as assignment, ar.completed_at - ar.started_at as duration 
from assistance_requests ar
join teachers t
on t.id = ar.teacher_id
join students s 
on s.id = ar.student_id
join assignments a
on a.id = ar.assignment_id
order by duration;

