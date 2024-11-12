select avg(ar.started_at - ar.created_at) as average_wait_time
from assistance_requests ar;