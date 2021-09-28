SELECT * FROM employees;
-- 1. Write a query that returns all employees (emp_no), their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.
SELECT emp_no, dept_no, from_date, to_date,
CASE
WHEN to_date > NOW() THEN TRUE
ELSE FALSE
END AS is_current_employee
FROM employees.dept_emp;

-- 2. Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.
SELECT first_name, last_name
CASE last_name
WHEN 'A%' THEN 'A-H'
ELSE FALSE
END AS 'alpha_group'
FROM employees;