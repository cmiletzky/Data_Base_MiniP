SELECT p.payement_month, sum(p.sum)
FROM elafishe.payments p
INNER JOIN reservation r ON r.reservationid=p.order_id
where r.reservationdate > TO_DATE('1/1/2000', 'DD/MM/YY')
group by p.payement_month
