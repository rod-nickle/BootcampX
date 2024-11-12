select count(*) as total_assistances, s.name
from students s
join assistance_requests ar
on ar.student_id = s.id
where s.name = 'Elliot Dickinson'
 group by s.name;