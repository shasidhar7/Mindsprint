-- Query task

use employees;
show tables;
select * from employees;

select * from employees limit 5;


-- 1. Retrieve the first name, last name, and job title of all employees
select e.first_name, e.last_name,t.title
from employees e
join titles t
on e.emp_no = t.emp_no;

-- 2. Find all employees who work in the Sales department.
SELECT employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';
 
 -- 3. Calculate the average salary of all employees.
SELECT AVG(salary) AS average_salary
FROM salaries;

-- 4. Find the total number of employees in each department.
select d.dept_name as DepartmentName, count(*) as TotalEmployees
from dept_emp de
join departments d
on de.dept_no = d.dept_no
group by d.dept_name;

-- 5. List department with more than 5 employees
select d.dept_name, count(*) as Total_employees
from departments d 
join dept_emp de 
on d.dept_no = de.dept_no
group by d.dept_name
having count(de.emp_no) > 5;

-- 6. List all employees and the names of their managers.
	-- Manager names are not available in the schema

-- 7. Find all employees who work in the 'Marketing' or 'Finance' departments.
select e.first_name, e.last_name, d.dept_name
from employees e
join dept_emp de 
on e.emp_no = de.emp_no
join departments d
on d.dept_no = de.dept_no
where d.dept_name in('Marketing','finance');

-- 8. Find all customers whose names start with the letter 'A'.
SELECT * FROM employees
WHERE first_name LIKE 'A%';

-- 9. Combine the first names and last names into a single list.
SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name' FROM employees;

-- 10. Find the names of employees who have placed the highest number of orders. 

-- 11. Find the number of Male and Female employees in the database and the order count in descending order.
SELECT gender, COUNT(*) AS 'Total Employees'
FROM employees
GROUP BY gender
ORDER BY `Total Employees` DESC;
 
-- 12. Find the Average salary by employee title and order by descending order. 
SELECT AVG(s.salary) as 'Average Salary', t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
GROUP BY t.title
ORDER BY `Average Salary` DESC;
 
-- 13. List first 5 employees (id,fname,lname,department name) along with their department names. 
SELECT e.emp_no AS ID, e.first_name, e.last_name, d.dept_name as 'Department Name'
FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dm.dept_no
LIMIT 5;
 
-- 14. Display firstname, lastname,salary of the highest payed employee. 
SELECT e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s ON s.emp_no = e.emp_no
ORDER BY s.salary DESC
LIMIT 1;
 
-- 15. second highest payed employee
SELECT e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
WHERE s.salary = (
    SELECT DISTINCT salary
    FROM salaries
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);
 
