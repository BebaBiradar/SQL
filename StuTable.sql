create database  ThinkQPortable;
use ThinkQPortable;
create table student1(rollno int,name varchar(25));
insert into student1 values(2,'beba');
select rollno, name from student;
drop table student1;
--data type=tinyint,smallint,int,bigint
--float,real
--char((n)char size is fixed,it cannot change once created)and varchar((n) memory sized is not fixed ,it can be changed)
--date('yyyy-mm-dd'),datetime

create table student1(rollno int,sname varchar(20),age tinyint,addr varchar(25),dod date);
select *from student1;

insert into student1 values(1,'sonu',20,'bidar','2002-12-25');
insert into student1 values(2,'raj',21,'bhalki','2001-12-15');
insert into student1 values(3,'arti',22,'pune','2003/4/5');
-or
insert into student1(rollno,sname,age)values(3,'paresh',20);

select rollno,sname from student1;--it will display particular colunm
--or
select *from student1;   --it will display all colunms from table

--delete commond
delete from student1 where sname='arti';
drop table student1;


--constaints keyas
--primary key =connot have null value
--unique key= the column on which unique constraints is applied can have null value
create table student
(
rollno int primary key,
sname varchar(20)not null,
age tinyint check(age>0),
addr varchar(25) not null default'pune',
dod date
);--mobile bigint unique
select* from student;
insert into student values(1,'raj',20,'pune','2002/6/8');
insert into student(rollno,sname,age)values(3,'nikita',29);

