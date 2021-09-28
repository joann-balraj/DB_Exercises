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
USE sakila;
CREATE TEMPORARY TABLE hopper_1561.cents AS
SELECT amount
FROM payment;
USE hopper_1561;
ALTER TABLE cents ADD payments INTEGER;
UPDATE cents
SET payments = amount * 100;
ALTER TABLE cents DROP COLUMN amount;
SELECT * FROM cents;

-- 3.)
CREATE TEMPORARY TABLE hopper_1561.current AS 
SELECT d.dept_name, AVG(s.salary) as current_average_salary
FROM departments as d 
JOIN dept_emp as de
ON d.dept_no = de.dept_no
JOIN salaries as s
ON de.emp_no = s.emp_no
WHERE s.to_date > NOW() AND de.to_date > NOW() 
GROUP BY d.dept_name
order by average_salary desc;
ALTER TABLE hopper_1561.current ADD historic float(10,2);
UPDATE hopper_1561.current
SET historic = 63810.74;
ALTER TABLE hopper_1561.current DROP COLUMN historic;
ALTER TABLE hopper_1561.current ADD zscore float(10, 2);
ALTER TABLE hopper_1561.current ADD historic_std float(10, 0);
UPDATE hopper_1561.current
SET historic_std = (16904);
UPDATE hopper_1561.current
SET zscore = (historic - average_salary)/historic_std;
SELECT * FROM hopper_1561.current;
-- 

