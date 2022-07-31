create table Book(bid int primary key,bname varchar(20),authername varchar(20),bprice bigint check(bprice>0));
insert into Book values(1,'java','Gosling',100);
insert into Book values(2,'java','Gosling',200);
insert into Book values(3,'c','xyz',150);
select * from Book;
drop table Book;