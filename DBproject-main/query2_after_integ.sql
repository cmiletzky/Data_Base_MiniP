SELECT  sum( sum)
FROM reservation natural join elafishe.payments
WHERE reservationdate >TO_DATE('1/1/2019' , 'DD/MM/YY') and reservationdate< TO_DATE('1/4/2019', 'DD/MM/YY');
