create table customer
(custid int primary key,
cname varchar(20),
city varchar(20),
mobile bigint);

select * from customer;




create table OrderDetails
(orderid int primary key,
orderdate date,
custid int,
constraint fctid foreign key(custid) references customer(custid) on delete set null on update cascade);

select * from OrderDetails;


delete from customer where custid=1;
update customer set custid=1001 where custid=2;




create table item(itemid int primary key,
itemname varchar(20) ,
price int);

select * from item;




create table orderItemDetails
(orderid int,
itemid int,
qty int,
primary key(orderid,itemid),
foreign key (orderid) references orderDetails(orderid),
foreign key (itemid) references item(itemid));

select * from orderItemDetails;