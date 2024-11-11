SELECT s.name as student, avg(asu.duration) as average_assignment_duration
FROM students s
INNER JOIN assignment_submissions asu
ON asu.student_id = s.id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;
