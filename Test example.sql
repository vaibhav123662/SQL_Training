use PB3;

create table Doctor(did int primary key,
daddress varchar(100),
qualification varchar(20),
noofpatient_handled int default 0);

insert into Doctor values(1,'Pune','MD',10);
insert into Doctor values(2,'Mumbai','MBBS',7);
insert into Doctor values(3,'Pune','BHMS',9);

select * from Doctor;
drop table Doctor;



create table PatientMaster(Pcode int primary key,
pname varchar(20),
age int,
gender char(1),
bloodgroup varchar(10));


insert into PatientMaster values(11,'Vaibhav',23,'m','B+');
insert into PatientMaster values(12,'Rohit',24,'m','A+');
insert into PatientMaster values(13,'Mahesh',23,'m','AB+');

select * from PatientMaster;

alter table PatientMaster drop column Pcode;




create table AdmittedPatient(Pcode int foreign key references PatientMaster(Pcode) ,
Entry_date date,
Discharge_date date,
wardno int primary key,
disease varchar(30),
did int foreign key references Doctor(did));


insert into AdmittedPatient values(11,'2020-08-16','2020-08-25',20,'Cancer',2);
insert into AdmittedPatient values(12,'2021-09-15','2021-09-20',21,'Diabetes',1);
insert into AdmittedPatient(Pcode,Entry_date,wardno,disease,did) values(13,'2022-9-15',22,'Blood Pressure',3);

update AdmittedPatient set  Discharge_date='2022-9-20' where wardno=22;
alter table AdmittedPatient alter column wardno varchar(10);

alter table AdmittedPatient drop constraint FK__AdmittedPat__did__1DB06A4F;

select * from AdmittedPatient;
drop table AdmittedPatient;







create table Bill(Billno int primary key,
Pcode int foreign key references PatientMaster(Pcode),
Bill_amount int);

insert into Bill values(50,13,12000);
insert into Bill values(51,11,20000);
insert into Bill values(52,12,14000);

drop table Bill;
select * from Bill;