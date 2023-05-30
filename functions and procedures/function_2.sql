// given country and age as parameter ' returns the number of client above this age from the country

create or replace function old_from_age_percent (age in number , nationalp in char) 
return number is
total_clients number;
amount_above number;

begin

select count(*) into total_clients from client;
select count(*) into amount_above from client c where c.cnationality = nationalp
and c.cbdate < (current_date - 365*age);
  dbms_output.put_line('there is '|| amount_above || ' cliens from ' || nationalp || ' above ' || age || ' age   ' );

return(amount_above  );
end;