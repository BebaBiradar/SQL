use ThinkQPortable;

create table customer 
(cid int primary key,
cname varchar(25),
city varchar(25));

create table item
(itemid int primary key,
itemname varchar(20),
rate int);

create table order_header
(orderid int primary key,
orderdate date,
custid int,
foreign key (custid) references customer(cid));

create table order_details
(orderid int ,
orderdate date,
itemid int,
qty int,
primary key (orderid,itemid),
foreign key (orderid)references order_header(orderid),
foreign key (itemid)references item(itemid));