use PB3;
create table Employee(eid int primary key,ename varchar(20),esalary int,city varchar(30) default 'Pune');
insert into Employee values(1,'Vaibhav',11000,'Ahmednagar');
insert into Employee values(2,'Mahesh',15000,'Pune');
insert into Employee values(3,'Sohel',14000,'Mumbai');

insert into Employee(eid,ename,esalary) values(4,'Rohit',13000);

select * from Employee;
drop table Employee;
