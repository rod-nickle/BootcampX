select avg(ar.completed_at - ar.started_at) as average_assitance_request_duration
from assistance_requests ar;
