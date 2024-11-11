select sum(duration) as total_duration
from students s 
JOIN assignment_submissions asu
ON asu.student_id = s.id
WHERE s.name = 'Ibrahim Schimmel'
;