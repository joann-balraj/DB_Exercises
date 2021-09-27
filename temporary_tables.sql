USE employees;
-- 1.)
CREATE TEMPORARY TABLE hopper_1561.employees_with_departments AS
SELECT first_name, last_name, dept_name
FROM employees
JOIN dept_emp USING(emp_no)
JOIN departments USING (dept_no);
USE hopper_1561;
SELECT * FROM employees_with_departments;
ALTER TABLE employees_with_departments ADD full_name VARCHAR(100);
UPDATE employees_with_departments
SET full_name = CONCAT(first_name, ' ', last_name);
ALTER TABLE employees_with_departments DROP COLUMN first_name;
ALTER TABLE employees_with_departments DROP COLUMN last_name;

-- 2.) 