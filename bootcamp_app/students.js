const { Pool } = require("pg");

const pool = new Pool({
  user: "development",
  password: "development",
  host: "localhost",
  database: "bootcampx",
});


const cohortName = process.argv[2];
const rowLimit = process.argv[3] || 5;
const queryParms = [cohortName, rowLimit];

pool
  .query(
    `
SELECT s.id, s.name, c.name as cohort_name
FROM students s
JOIN cohorts c
ON c.id = s.cohort_id
WHERE c.name = $1
LIMIT $2;
`, queryParms)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
    });
  })
  .catch((err) => console.error("query error", err.stack));