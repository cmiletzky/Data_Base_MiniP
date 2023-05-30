// all the clients that ordered car where its proddate less then specific year
select*
from client
where clientid in(
select clientid
from car natural join reservation
where proddate < TO_DATE('15/07/2005', 'DD/MM/YY')