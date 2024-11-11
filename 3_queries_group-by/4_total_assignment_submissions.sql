SELECT c.name as cohort, count(*) as total_submissions
FROM cohorts c
INNER JOIN students s
ON s.cohort_id = c.id
INNER JOIN assignment_submissions asu
ON asu.student_id = s.id
GROUP BY c.name
ORDER BY total_submissions DESC;