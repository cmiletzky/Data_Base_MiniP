
// given month as paramete it prints to screen the amaount of reservation
// made along years in this specific month

create or replace procedure get_max_res_month (monthtosearch in number) is


    monthmax number; 
   resmax number;
cursor ord_month  is
select * from(
        select  EXTRACT(month FROM reservation.reservationdate) as Montht,
  COUNT(reservation.reservationdate) as No_of_ord
  FROM reservation
  GROUP BY EXTRACT(month FROM reservation.reservationdate)
  ORDER BY No_of_ord DESC) s
  where s.montht = monthtosearch;_

begin
  open 
   ord_month;
   loop
         
        FETCH ord_month into monthmax, resmax;
        EXIT WHEN ord_month%notfound;
              
              dbms_output.put_line(resmax||' reservations made in '||monthmax||' the most in this year' );
           END LOOP; 
   CLOSE ord_month; 
END;  