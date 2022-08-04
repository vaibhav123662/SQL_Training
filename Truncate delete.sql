---TRUNCATE
---DELETE

select * into temp_emp from thinkemp;

truncate table temp_emp;

delete from temp_emp where salary is null;
