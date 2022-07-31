use PB3;

create table Department(did int primary key,
dname varchar(20) not null,
dzone varchar(20));

select * from Department; 
drop table Department;

insert into Department(did,dname)values(1,'IT');
update Department set dzone='North' where dname='IT';

insert into Department values(2,'HR','South');
insert into Department values(3,'Finance','East');
insert into Department values(4,'Marketing','West');

alter table Department add location varchar(20);



create table Employee1(eid int primary key,
ename varchar(20) not null,
experience int default 0,
eage int,
deptid int default 0,
constraint ctid foreign key(deptid) references Department(did)
);

select * from Employee1;
drop table Employee1;

insert into Employee1 values(101,'Vaibhav',2,23,2);
insert into Employee1 values(102,'Mahesh',2,25,4);
insert into Employee1 values(105,'Rohit',2,22,1);
insert into Employee1 values(104,'Sohel',2,24,3);


update Employee1 set deptid=2 where ename='Sohel';
update Employee1 set eid=103 where ename='Rohit';