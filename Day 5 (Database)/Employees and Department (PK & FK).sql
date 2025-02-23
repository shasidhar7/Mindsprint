-- PK and FK Constraints

create database sample;
use sample;
create table departments (
id int primary key,
name varchar(250) not null);

INSERT INTO departments (id, name) 
VALUES 
(1, 'Sales'), 
(2, 'R&D'), 
(3, 'Marketing'), 
(4, 'Finance'), 
(5, 'Human Resources');

INSERT INTO departments (id, name) 
VALUES 
(6, 'IT');
select * from departments;

-- create employee table which makes many to one relationship between department and employees
-- one dept can have many employees

-- create employees table
create table employees (
id int primary key,
name varchar(250) not null,
position varchar(250) not null,
salary decimal(20,2),
department_id int,
foreign key (department_id) references departments(id)
);

select * from employees;
desc employees;

-- insert values into employees table
INSERT INTO employees 
(id, name, position, salary, department_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);

-- insert one recored without department id in employees table
INSERT INTO employees 
(id, name, position, salary, department_id) 
VALUES 
(9, 'Test User', 'Testing', 4567.00, null);
select * from employees;