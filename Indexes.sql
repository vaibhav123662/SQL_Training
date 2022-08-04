create index idxstudent on Student(city);  
---non clustered index

drop index idxstudent on Student;

select * from Student where marks=90;


create table empp
(eid int primary key identity(101,1),
ename varchar(25) not null,
mobile bigint);


insert into empp(ename,mobile) 
values('Vaibhav',9604534856);

insert into empp(ename,mobile) 
values('Ajinkya',9325254096);

select * from empp;

create unique nonclustered index idxnb on empp(mobile)
where mobile is not null;

insert into empp(ename) values('Rohit');
insert into empp(ename) values('Mahesh');


