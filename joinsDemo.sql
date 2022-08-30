use ThinkQPortable;
select *from student2 cross join batch;

select sname,sid from student2 inner join batch on student2.batchid=batch.batchid;

select *from student2 inner join batch on student2.batchid=batch.batchid;

use HR;
select first_name,department_name,job_title from 
employees e inner join departments d
on e.department_id=d.department_id inner join jobs j on e.job_id=j.job_id;


--select sname, bname,tname from student s inner join batch b on s.batchid=b.batchid inner join trainer t on b.tid=t.trainerid

--select first_name ,model_name ,from purchase p inner join model m on p.modelid=m.modleid inner join customer c on p.custid=c.custid; 