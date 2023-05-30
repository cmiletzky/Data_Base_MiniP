select distinct  description
from elafishe.extras e , elafishe.extrasfororders efo
where efo.order_id in(
select me.reservationid
from reservation me , elafishe.extrasfororders efo
where me.reservationdate > TO_DATE('1/1/2000', 'DD/MM/YY') and
 me.reservationdate < TO_DATE('1/1/2020', 'DD/MM/YY')

)
