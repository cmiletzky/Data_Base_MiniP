
// print to screen what majority in client craud in aspect of gender


create or replace procedure genderMajority as
women number :=0;
men number :=0;
begin 
  select count(*) into women from client c where c.cgender = 'F';
 select count(*) into men from client c where c.cgender = 'M';
if (women > men) 
  then dbms_output.put_line('There is more women clients then men');
  else if (women <= men) 
  then dbms_output.put_line('There is more men clients then women');
  
end if; end if;

end ;



