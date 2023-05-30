/ שמות הלקוחות שהזמינו רכב בטווח תאריכים מסוים
select distinct cname ,clientid
from reservation natural join client
where reservationDate> TO_DATE('01/01/2000', 'DD/MM/YY') and reservationDate< TO_DATE('01/01/2010', 'DD/MM/YY')