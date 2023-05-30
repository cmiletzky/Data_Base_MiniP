//כל ההזמנות שהוזמנו בטווח תאריכים מסוים

select*
from reservation
where reservationdate >TO_DATE('1/1/2018' , 'DD/MM/YY') and reservationdate< TO_DATE('1/1/2022', 'DD/MM/YY')
