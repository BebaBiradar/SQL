use Empp;
--create index inxstud on student(percentage)--non clusterd
--drop index inxstud on student;
--select *from student where percentage=90;

create table employee(eid int primary key identity(101,1),ename  varchar(25) not null, mobile bigint);

insert into employee(ename,mobile)values('xyz',7899876556);
insert into employee(ename,mobile)values('abc',7899236556);

select *from employee;
create unique nonclustered index indxm on employee(mobile) where mobile is not null;
insert into employee(ename) values('sonu');
drop index indxm on employee;
