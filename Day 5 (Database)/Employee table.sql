use mindsprint;

-- Create a Employee table
create table employee(
id int primary key,
name varchar(255),
department varchar(255),
salary decimal(65,2));

select* from employee;

-- describe the table
desc employee;

-- adding extra column
alter table employee
add column position varchar(255);

-- modify the existing column datatype
alter table employee
modify salary int;

-- insert values by using all fields
insert into employee values(1,"Shasi","IT",1000000,"JE");

-- insert values by using firld names
insert into employee(id,name,department,salary,position) values (2,"Dhoni","Sales",3009000,"Executive");

-- insert values by skipping  field names
insert into employee(id,name,department,salary) values (3,"Dhoni","HR",3009000);

-- insert multiple values
-- insert values by using firld names
insert into employee(id,name,department,salary,position) values 
(4,"Manu","IT",123456,"Jr Developer"),
(6,"Vinutha","Sap",98776,"Executive"),
(7,"Nisarga","Sales",4567654,"Manager");


-- update name
update employee 
set name = "Lokesh" where id = 3;

-- delete 
delete from employee 
where id = 1;

-- truncate
truncate table employee;
select * from employee;

-- derop the table
drop table employee;
select * from employee;

