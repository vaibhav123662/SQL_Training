create table Customer1
(Cust_id int primary key,
name varchar(20),
address_line1 varchar(50),
address_line2 varchar(50),
city varchar(20),
pin_code int,
totalrequests int);

select * from Customer1;




create table Employee2
(Emp_id int primary key,
name varchar(20),
age int,
requestCompleted int,emp_rating int);

select* from Employee2;




create table Service_Status
(Status_id int primary key,
desk int);

insert into Service_Status values(101,300),(102,301),(103,302);
select * from Service_Status;




create table Service_Request
(Service_id int primary key,
Cust_id int,
service_desc int,
request_open_date date,
Status_id int,
Emp_id int,
request_closed_date date,
charges int,
foreign key(Cust_id) references Customer1(Cust_id),
foreign key(Status_id) references Service_Status(Status_id),
foreign key(Emp_id) references Employee2(Emp_id));

select * from Service_Request;









---1- Write a query to create employee table
---2- WAQ to add column totalrequest to customer table
---3- 


