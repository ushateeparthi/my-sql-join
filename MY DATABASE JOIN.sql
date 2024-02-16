CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;
-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_department_id INT,
    emp_salary DECIMAL(10, 2)
);

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);
-- Insert data into employees table
INSERT INTO employees (emp_id, emp_name, emp_department_id, emp_salary)
VALUES
    (1, 'John Doe', 1, 50000.00),
    (2, 'Jane Smith', 2, 60000.00),
    (3, 'Alice Johnson', 1, 55000.00),
    (4, 'Bob Brown', 2, 62000.00);

-- Insert data into departments table
INSERT INTO departments (dept_id, dept_name)
VALUES
    (1, 'Engineering'),
    (2, 'Marketing');
    -- innner join
    SELECT emp_name, dept_name
FROM employees
INNER JOIN departments ON employees.emp_department_id = departments.dept_id;
-- left join
SELECT emp_name, dept_name
FROM employees
LEFT JOIN departments ON employees.emp_department_id = departments.dept_id
-- right join
SELECT emp_name, dept_name
FROM employees
RIGHT JOIN departments ON employees.emp_department_id = departments.dept_id;
-- Full Outer Join (MySQL does not support full outer join directly, but it can be achieved using a combination of left join and right join)
SELECT emp_name, dept_name
FROM employees
LEFT JOIN departments ON employees.emp_department_id = departments.dept_id
UNION
SELECT emp_name, dept_name
FROM employees
RIGHT JOIN departments ON employees.emp_department_id = departments.dept_id;
-- group by--
SELECT dept_name, AVG(emp_salary) AS avg_salary
FROM employees
JOIN departments ON employees.emp_department_id = departments.dept_id
GROUP BY dept_name;
 -- order by
 SELECT emp_name, emp_salary
FROM employees
ORDER BY emp_salary DESC;

SELECT emp_name, emp_salary
FROM employees
ORDER BY emp_salary ASC;







