// ******* VIEW *******

1)

// retrives all pairs of branch and car id that is actice
CREATE OR REPLACE  VIEW view_cars_of_company AS
SELECT branchid, carid
FROM car c
WHERE c.isactive =1 
order by c.branchid



2)

// סך ההכנסות מתחילת שנה נוכחית
CREATE  VIEW view_profit_company AS
SELECT   sum(p.sum) as sum_this_year
FROM elafishe.payments p
INNER JOIN reservation r ON r.reservationid=p.order_id
where r.reservationdate > TO_DATE('1/1/2022', 'DD/MM/YY')

3)

CREATE OR REPLACE  VIEW view_cars_reseve_today AS
SELECT *
FROM reservation c
WHERE c.reservationdate =current_date 


4)
CREATE OR REPLACE  VIEW view_res_this_month AS
SELECT c.clientid
FROM reservation r inner join client c
on c.clientid= r.clientid 
WHERE r.reservationdate > current_date - 30;