select * from employees where department_id=9 or department_id=6;

select * from employees where salary=10000 and job_id=5;

select * from employees where department_id in (9,6,5);

select * from employees where department_id not in (1,2,3);

select * from employees where salary>=10000 and salary<=15000;

select * from employees where salary between 10000 and 15000;

update employees set salary=15000 where salary<10000; 

select * from employees where phone_number is null;

select * from employees where phone_number is not null;

select distinct department_id from employees;

select top(10) * from employees;

select * from employees;



select * from employees order by salary;

select * from employees order by first_name desc;

select * from employees where department_id=9 order by salary;

select * from employees where department_id=9 order by salary,first_name;

select * from employees where department_id=9 order by salary,first_name,last_name;

---like
select * from employees where first_name like 'D%';
select * from employees where first_name like 'D%n';



---Aggregate function
---sum,max,min,count,avg

select max(salary) as 'maximum_salary' from employees where department_id=6;

select min(salary) as 'minimum_salary' from employees where department_id=6;

select sum(salary) from employees;

select avg(salary) from employees;

select count(phone_number) from employees;

select count(*) from employees;



---group by and having clause

--departmentwise salary max,min count
select department_id, max(salary) from employees group by department_id;

select department_id, min(salary) from employees group by department_id;

select department_id,count(*) from employees group by department_id;


---having
select department_id,count(*) from employees group by department_id having count(*)>=5;


---SUBQUERY

select * from employees where department_id=
(select department_id from departments where department_name='IT');

select * from employees where job_id=
(select job_id from jobs where job_title='Programmer');

