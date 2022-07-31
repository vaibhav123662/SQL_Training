create table Hotel
(
hotelid int,
hotelname varchar(20)
);
alter table Hotel add city varchar(25);
alter table Hotel add rating int;

select * from Hotel;

insert into Hotel values(1,'Matheran','pune',4);

alter table Hotel drop column rating;

insert into Hotel values(2,'patil','mumbai');

//To change the datatype 
alter table Hotel alter column rating float;
insert into Hotel values(1,'rushikesh','Parner',4.5);

delete from Hotel where hotelname='patil';
delete from Hotel where hotelname='rushikesh';

alter table Hotel alter column hotelid int not null;

alter table Hotel add Primary key(hotelid);
alter table 
sp_help Hotel;