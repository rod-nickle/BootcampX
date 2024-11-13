const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
});


cohort_name = process.argv[2]

pool
  .query(
    `
select distinct t.name as teacher_name, c.name as cohort_name
from assistance_requests ar
join teachers t
on t.id = ar.teacher_id
join students s 
on s.id = ar.student_id
join cohorts c
on c.id = s.cohort_id
where c.name = '${cohort_name}'
order by t.name;
`
  )
  .then((res) => {
    res.rows.forEach((teacher) => {
      console.log(`${cohort_name}: ${teacher.teacher_name}`);
    });
  })
  .catch((err) => console.error("query error", err.stack));