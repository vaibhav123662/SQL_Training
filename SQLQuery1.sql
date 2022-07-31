create database PB3;
create table Student(sid int primary key,sname varchar(20) not null,marks int check (marks>0),mobile bigint,city varchar(30) default 'Pune');
insert into Student values(1,'Vaibhav',92,9604534856,'Mumbai');
insert into Student values(2,'Rohit',91,9325962416,'Hyderbad');
insert into Student(sid,sname) values(3,'Sohel');
select sid,sname,marks,mobile from Student;
select * from Student;

alter table Student drop constraint DF__Student__city__07020F21;
alter table Student drop column mobile;
drop table Student;