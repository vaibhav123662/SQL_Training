---views


create view vktemp as
select empid,ename from thinkemp;

select * from vktemp;
select * from thinkemp;

insert into vktemp values(9,'Sonali');

delete from vktemp where empid=3;



create view vk2 as
select trainerid ,count(*) as count from student1 
group by trainerid;

select * from vk2;


select * from vk22;

create view vk22 as 
select sname,t.tid,tname from Student1 s inner join 
trainer t on s.trainerid=t.tid;

select * from Student1;