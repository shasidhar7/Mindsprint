-- CREATE EMPLOYEES table

use mindsprint;

create table employees (
id int primary key auto_increment,
name varchar(255),
position varchar(255),
department varchar(255),
salary decimal(50,2));

select * from employees;

-- insert into employees table
insert into employees(name, department,position,salary) values
('Lokesh','it','jrDeveloper',10000), ('Manoj','it','jrEngineer',50000);

insert into employees(name, department,position,salary) values
('Nisarga','Intern','Sap',5000), ('Manu','HR','SAP',100);



-- select usecases
select 1+1 as 'result';
select concat('john',' ','Doe') as fullname;
select now() today;
select upper('Hello World') as 'Upper Case';


select* from employees;

-- where clause
-- retrieve data of employee whose salary is more than 5000
select * from employees where salary > 5000;

-- whose salaries is equal to 100000
select * from employees where salary = 100000;

-- retirve data whose id is 4
select * from employees where id = 4;

-- retirve whose name is Nisarga
select * from employees where name = 'nisarga';

-- salary between 30000 to 70000
select * from employees where salary > 30000 and salary < 70000;

-- retrieve data whose dept is IT
select * from employees where department = 'IT';


-- ORDER BY
select * from employees order by salary asc;
select * from employees order by salary desc;
select * from employees order by department asc, salary desc;
select * from employees order by position asc, name asc;
select * from employees order by salary desc, department asc, name desc;

-- select highest salary
select * from employees order by salary desc limit 1;
select * from employees where salary = (select max(salary) from employees order by salary desc);

-- Second highest
select * from employees order by salary desc limit 1 offset 1;

select * from employees;

-- in, not in
select * from employees where department in('hr','It');
-- like
select * from employees where name like 'm%';
select * from employees where name like '%a%';