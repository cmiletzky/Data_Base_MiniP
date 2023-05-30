// select all clients that made more then 3 reservaton

select * 
from client
where clientid in ( select distinct clientid
from client natural join reservation
group by clientid
having count(*)>3
)















