SELECT c.name cohort_name, count(*) student_count
FROM cohorts c
INNER JOIN students s
ON s.cohort_id = c.id
GROUP BY c.name
HAVING count(*) >= 18
ORDER BY student_count;