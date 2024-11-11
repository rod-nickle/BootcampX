SELECT s.name as student, avg(asu.duration) as average_assignment_duration, avg(a.duration) as average_estimated_duration
FROM students s
INNER JOIN assignment_submissions asu
ON asu.student_id = s.id
INNER JOIN assignments a
ON a.id = asu.assignment_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING avg(asu.duration) < avg(a.duration)
ORDER BY average_assignment_duration DESC;
  