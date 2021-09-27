USE employees;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM salaries WHERE to_date > NOW();
SELECT count(SELECT * FROM salaries WHERE to_date > NOW());
-- 1.) Find all the current employees with the same hire date as employee 101010 using a sub-query.
SELECT first_name, last_name FROM employees WHERE hire_date = (SELECT hire_date FROM employees
WHERE emp_no LIKE 101010);

-- 2.) Find all the titles ever held by all current employees with the first name Aamod.
SELECT fn.first_name, titles.title FROM (SELECT * FROM employees WHERE first_name LIKE 'Aamod') as fn
JOIN titles using(emp_no);

-- 3.) How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.
SELECT count(employees.first_name) FROM (SELECT titles.emp_no FROM titles WHERE to_date < NOW()) as t
JOIN employees using(emp_no);
-- 203184 employees no longer work for the company.

-- 4.) Find all the current department managers that are female. List their names in a comment in your code.
SELECT first_name, last_name FROM employees WHERE emp_no IN(SELECT emp_no FROM dept_manager WHERE dept_manager.to_date > NOW() AND gender LIKE 'F');
-- Isamu Legleitner, Karsten Sigstam, Leon DasSarma, and Hilary Kambil are all of the current female department managers.

-- 5.) Find all the employees who currently have a higher salary than the companies overall, historical average salary.
SELECT emp_no FROM salaries WHERE salary > (SELECT avg(salary) FROM salaries);

-- 6.) How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?
SELECT count(*), count(*)/(SELECT count(*) FROM salaries WHERE to_date > NOW())
FROM salaries 
WHERE to_date > NOW()
AND salary >=
(SELECT max(salary)
FROM salaries 
WHERE to_date > NOW()) 
- 
(SELECT stddev(salary)
FROM salaries
WHERE to_date > NOW());