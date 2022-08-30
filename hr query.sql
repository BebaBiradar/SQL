select first_name,salary from employees;

select * from employees where  salary<15000 and department_id=10;
select*from employees where department_id=5 or department_id=7 or department_id=10;
select*from employees where department_id in(5,7,10);
select*from employees where department_id not in(5,7,10);
select*from employees where salary >=1500 and salary<=20000;
--0r
select*from employees where salary  between 15000 and 20000;
select distinct department_id from employees;
select*from employees;
select*from employees where phone_number is not null;


--Like= _(underscore space indicate) and %
--(_)=single charector
--(%)=pattern matching zero or more characters
select  *from employees where first_name like '__a__';
select* from employees where  first_name like 's%n';

--order by(by default it order data in assending order)
select *from employees order by salary desc;
select *from employees order by salary ;
select*from employees where department_id=10 order by salary;


--Aggregate Function=min,max,avg,sum,count=always return single value
--count(number records which has got value in it and it will not accept or count null value)

select min(salary)from employees where department_id=10;
select min(salary)from employees;
select max(salary) 'maximum salary' from employees;
select sum(salary) from employees;
select avg(salary)from employees;
select count(phone_number)from employees;
select count(*)from employees;
select *from employees;

--department wise max salary group by
select department_id,max(salary)from employees group by department_id;
select email,count(*) from employees group by email;

select department_id, sum(salary) as salary from employees
group by department_id having sum(salary)>=80000;

