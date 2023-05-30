// given nationality as parameter it returns the percentge of clients that comming from there

create or replace function national_percent (nationalp in char) 
return number is
total_clients number;
amount_this_nation number;

begin

select count(*) into total_clients from client;
select count(*) into amount_this_nation from client c where c.cnationality = nationalp;

return(amount_this_nation /total_clients );
end;