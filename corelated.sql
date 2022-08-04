create table thinkemp
(empid int primary key,
ename varchar(20) not null,
salary int,
managerid int);


alter table thinkemp add constraint fjktid
foreign key(managerid) references thinkemp(empid);

select * from thinkemp;

select * from thinkemp e1 inner join thinkemp e2
on e1.managerid=e2.empid;

select e1.ename 'EmpName',e2.ename 'Manager'
from thinkemp e1 inner join thinkemp e2 
on e1.managerid=e2.empid;

select m.ename,count(*) from thinkemp e inner join 
thinkemp m on e.managerid=m.empid group by m.ename 
having count(*)>=2;



update employees
set salary=salary+10000
where department_id=
(select department_id from departments 
where department_name='Executive');

update employees
set salary=salary+10000
from employees e inner join departments d 
on e.department_id=d.department_id
where department_name='Executive';


select distinct salary from employees order by 
salary desc offset 4 rows fetch next 1 row only;


select * from employees e1 where 5=
(select count(distinct(salary)) from employees e2 
where e2.salary=e1.salary); 