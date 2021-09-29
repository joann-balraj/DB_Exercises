SELECT * FROM employees;
-- 1. Write a query that returns all employees (emp_no), their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not.
SELECT emp_no, dept_no, from_date, to_date,
CASE
WHEN to_date > NOW() THEN TRUE
ELSE FALSE
END AS is_current_employee
FROM employees.dept_emp;

-- 2. Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.
SELECT last_name,
	CASE 
		WHEN last_name LIKE 'A%' OR last_name LIKE 'B%' OR last_name LIKE 'C%' OR last_name LIKE 'D%' OR last_name LIKE 'E%' OR last_name LIKE 'F%' OR last_name LIKE 'G%' OR last_name LIKE 'H%' THEN 'A-H'
	 	WHEN last_name LIKE 'I%' OR last_name LIKE 'J%' OR last_name LIKE 'K%' OR last_name LIKE 'L%' OR last_name LIKE 'M%' OR last_name LIKE 'N%' OR last_name LIKE 'O%' OR last_name LIKE 'P%' OR last_name LIKE 'Q%' THEN 'I-Q'
	 	WHEN last_name LIKE 'R%' OR last_name LIKE 'S%' OR last_name LIKE 'T%' OR last_name LIKE 'U%' OR last_name LIKE 'V%' OR last_name LIKE 'W%' OR last_name LIKE 'X%' OR last_name LIKE 'Y%' OR last_name LIKE 'Z%' THEN 'R-Z'
ELSE FALSE
END AS 'alpha_group'
FROM employees;

-- 3. How many employees (current or previous) were born in each decade?
SELECT birth_date,
	CASE 
		WHEN birth_date LIKE '195%' THEN '50s'
	 	WHEN birth_date LIKE '196%' THEN '60s'
ELSE FALSE
END AS 'birth_decade'
FROM employees;