---DATE

---display curdate
select getdate();

---display day
select DATEPART(day,getdate());

---display month
select DATEPART(MM,getdate());

select DATEADD(day,10,getdate());
select DATEADD(year,2013-03-14,getdate());
select DATEADD(day,2013-03-14,getdate());
select DATEADD(month,2013-03-14,getdate());


---STRING

select first_name ,upper(last_name) from employees;
select first_name ,lower(last_name) from employees;
select lower(first_name) ,upper(last_name) from employees;
select upper('deepa');
select len('   deepa') ,len(trim('deepa   '));
select concat(first_name,' ',last_name) as Fullname from employees;
select concat('mr/mrs',first_name,' ',last_name) as Fullname from employees;

select SUBSTRING('Thinkquotient',3,5);

select char(65);
select ASCII('a');




---UNION AND UNION ALL

select eid, ename from Employee1
union
select eid,ename from empp;

select eid, ename from Employee1
union all
select eid,ename from empp;

select eid, ename from Employee1
intersect
select eid,ename from empp;