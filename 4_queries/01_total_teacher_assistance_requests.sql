select count(*) as total_assistances, t.name
from teachers t
join assistance_requests ar
on ar.teacher_id = t.id
where t.name = 'Waylon Boehm'
 group by t.name;