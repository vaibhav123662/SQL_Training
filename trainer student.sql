create table trainer(tid int primary key,
tname varchar(20) not null,
experience int default 0,
qualification varchar(25));

select * from trainer;
drop table trainer;

update trainer 
set experience=15,qualification='MCS' where tname='Deepa';

update trainer 
set experience=experience+5,qualification='MCS' where tname='Deepa';

alter table trainer add tsalary int;

update trainer set tsalary=50000 where tname='kirti';

delete from trainer where tname='Deepa';

insert into trainer(tid,tname) values(101,'Deepa'),
(102,'Kirti'),
(103,'Kalyani');


create table student1(sid int primary key,
sname varchar(20),
percentage int,
trainerid int,
constraint fktid foreign key(trainerid) references trainer(tid)
);

insert into student1 values(1,'vaibhav',90,102);
insert into student1 values(2,'vaibhav',90,101);
insert into student1 values(3,'vaibhav',90,103);

select * from student1;
drop table student1; 

