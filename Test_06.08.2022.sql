
create table Teacher
(teacher_id int primary key,
Tname varchar(20));


create table Batch
(Batch_id int primary key,
BatchName varchar(20),
teacher_id int,
foreign key(teacher_id) references Teacher(teacher_id),);

select * from Batch;


create table Status
(status_id int primary key,
status_desc varchar(25) not null);


create table Student2
(stud_id int primary key,
Sname varchar(20) not null,
Mobile bigint,
Batch_id int,
foreign key(Batch_id) references Batch(Batch_id),
status_id int,
foreign key(status_id) references Status(status_id),
Year_Of_Pass int);


create table Score
(stud_id int,
Test_date date,
Topic varchar(30),
Marks_obtained int,
primary key(stud_id,Test_date));


create table Attendance
(stud_id int,
Sdate date,
Present varchar(20)
foreign key(stud_id) references Student2(stud_id)
);


--Q1 Write a query to create Student and Score table. 
create table Student2
(stud_id int primary key,
Sname varchar(20) not null,
Mobile bigint,
Batch_id int,
foreign key(Batch_id) references Batch(Batch_id),
status_id int,
foreign key(status_id) references Status(status_id),
Year_Of_Pass int);


create table Score
(stud_id int,
Test_date date,
Topic varchar(30),
Marks_obtained int,
primary key(stud_id,Test_date));


---Q2 Write a query to add column Qualification to Student table.
alter table Student2 add Qualification varchar(20);

 ---Q3 Write single query to create StudentCopy table which will have same structure and data of table.
select * into Student2Copy from Student2;

---Q4 List all studentsname from july2018 who were absent for test on 18Aug2018.
select count(*),Sname from Student2 where stud_id=(select stud_id from Score Where Test_Date='2018-08-18');

---Q5.Update record of student Mithilesh from July2018 batch to Aug2018.Batch id of both batches is not known.
update Student2 set Sname='Mithilesh' where stud_id=(select stud_id from Student2 where Batch_id=(select Batch_id from Batch where BatchName between 'July2018' and 'Aug2018'));

---Q6 Assume there is field ‘student_count’ in batch table. Write a query to update this field by counting no of students in that batch.
update Batch set student_count =(select count(*) from Student2 s inner join Batch b on s.Batch_id=b.Batch_id);

---Q7.List all Students from July2018 whose qualification is “BE” and year of passing is 2018.
select * from Student2 where stud_id=(select stud_id from Student2 where Qualification='BE' and Year_Of_Pass=2018);

---Q8.List student name ,topic and topic wise marks of each student from July2018 batch.
select Sname,Topic,Marks_Obtained from Student2 s inner join Score sc on s.stud_id=sc.stud_id inner join Batch b on b.Batch_id=s.Batch_id where BatchName='July2018';

---Q9.Display batchname and Batchwise Placed student count for all batches from which less than 5 students are placed.
select BatchName,count(*) from Batch  group by Batch_id having count(*)>=5;

---Q10.Display top 3 students from july2018 batch with least attendance.
select * from Student2 s1 where 3=(select count(distinct(Sname)) from Student2 s2 where s1.stud_id>=s2.stud_id);

---Q11.Delete all records of those students from attendance who are ‘PLACED’
delete Student2,Status from Student2 inner join Status on Student2.stud_id=Status.Status_id where Status.Status_desc='Placed';

---Q12.Delete all records of students whose average marks are less than 50.
delete Student2,Score from Student2 inner join Score on Student2.stud_id=Score.stud_id where stud_id=(Select stud_id,avg(Marks_obtained) from Score where Marks_Obtained<=50);

---Q13.Create a view to which shows sid name batchname. 
create view Sviews as select stud_id,Sname,BatchName from Student2,Batch where Student2.Batch_id=Batch.Batch_id; 

---Q14.Create index so that retrieval of records is faster when retrieved based on status id
create index idxStatus_id on Status(Status_id);

---Q15.Give one example of left outer join using above database.
select Sname,BatchName from Student2 left join Batch on Student2.Batch_id=Batch.Batch_id;
