const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
});


const cohortName = process.argv[2];
const queryParms = [cohortName];

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
where c.name = $1
order by t.name;
`, queryParms)
  .then((res) => {
    res.rows.forEach((teacher) => {
      console.log(`${teacher.cohort_name}: ${teacher.teacher_name}`);
    });
  })
  .catch((err) => console.error("query error", err.stack));