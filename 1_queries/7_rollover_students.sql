SELECT 
s.name as student_name,
s.start_date as student_start_date,
c.name as cohort_name,
c.start_date as cohort_start_date
FROM students s
JOIN cohorts c
ON c.id = s.cohort_id
WHERE s.start_date <> c.start_date
ORDER BY c.start_date
;