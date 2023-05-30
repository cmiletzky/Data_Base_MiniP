select distinct cause
from reservation natural join elafishe.cancellations
where reservationdate >TO_DATE('1/1/2020' , 'DD/MM/YY') and reservationdate< TO_DATE('1/1/2021', 'DD/MM/YY')
