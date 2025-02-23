-- Joins
use sample;

select * from employees;
select * from departments;


-- Inner Join to take common details from both tables
select e.id, e.name, e.position Designation, e.salary, d.name 'Dept_name' from
employees e 
join departments d
on e.department_id = d.id;

-- left join
select e.id, e.name, e.position Designation, e.salary, d.name 'Dept_name' from
employees e 
left join departments d
on e.department_id = d.id;

-- right join
select e.id, e.name, e.position Designation, e.salary, d.name 'Dept_name' from
employees e 
right join departments d
on e.department_id = d.id;

-- execute full outer join
select e.id, e.name, e.position Designation, e.salary, d.name 'Dept_name' from
employees e 
left join departments d
on e.department_id = d.id
UNION 
select e.id, e.name, e.position Designation, e.salary, d.name 'Dept_name' from
employees e 
right join departments d
on e.department_id = d.id;

-- Cross Join
select e.id EmployeeID, e.name EmployeeName, d.id DepartmentID, d.name DepartmentName
from employees e 
cross join departments d;


-- Find total employees based on the department
select dep.name 'Depart Name' , count(*) 'Total employees'
from employees emp
join departments dep
on emp.department_id = dep.id
group by dep.name;


-- Total sum of salaries based on department
select dep.name 'Depart Name' , sum(salary) 'Total employees'
from employees emp
join departments dep
on emp.department_id = dep.id
group by dep.name;


-- Having Clause
select dep.name as Depart_Name , sum(emp.salary) as Total_salary
from employees emp
join departments dep
on emp.department_id = dep.id
group by dep.name
having Total_salary > 100000;


-- Query to fetch the department name which is greater than 2
select dep.name as Depart_Name , count(*) as Total_employees
from employees emp
join departments dep
on emp.department_id = dep.id
group by dep.name
having Total_employees > 2;

-- RollUp
SELECT departments.name AS department, SUM(employees.salary) AS total_salary
FROM employees
JOIN departments ON employees.department_id = departments.id
GROUP BY departments.name WITH ROLLUP;
