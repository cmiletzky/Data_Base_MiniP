CREATE  VIEW view_profit_company AS
SELECT   sum(p.sum) as sum_this_year
FROM elafishe.payments p
INNER JOIN reservation r ON r.reservationid=p.order_id
where r.reservationdate > TO_DATE('1/1/2022', 'DD/MM/YY')
