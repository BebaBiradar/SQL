use ThinkQPortable;
create table batch
(batchid int primary key,
batchname varchar(25));
select*from batch;
sp_help batch;
create table student2
(sid  int	Primary key,
sname varchar(30),batchid int);
sp_help student2;
select *from student2;

alter table student2 add constraint fkBid foreign key(batchid) references batch(batchid);

create table dept
(deptid int primary key ,
dname varchar(25));

create table emp
(empno int primary key,
ename varchar(25),
salary  int,
did int ,
constraint fkdid foreign key(did) references dept(deptid) on delete set null on update cascade);


drop table emp;