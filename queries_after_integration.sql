
// query 1 after integration

elect distinct cause
from reservation natural join elafishe.cancellations
where reservationdate >TO_DATE('1/1/2020' , 'DD/MM/YY') and reservationdate< TO_DATE('1/1/2021', 'DD/MM/YY')

// query 2 after integration

SELECT  sum( sum)
FROM reservation natural join elafishe.payments
WHERE reservationdate >TO_DATE('1/1/2019' , 'DD/MM/YY') and reservationdate< TO_DATE('1/4/2019', 'DD/MM/YY');

// query 3 after integration

select distinct  description
from elafishe.extras e , elafishe.extrasfororders efo
where efo.order_id in(
select me.reservationid
from reservation me , elafishe.extrasfororders efo
where me.reservationdate > TO_DATE('1/1/2000', 'DD/MM/YY') and
 me.reservationdate < TO_DATE('1/1/2020', 'DD/MM/YY')

)