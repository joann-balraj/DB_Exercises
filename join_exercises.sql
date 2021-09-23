-- JOIN EXAMPLE DATABASE
-- 1. Use the join_example_db. Select all the records from both the users and roles tables.
USE join_example_db;
SELECT * FROM users;
SELECT * FROM roles;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM titles;

-- 2. Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson.
SELECT *
FROM roles
INNER JOIN users
ON roles.id = users.id;

SELECT * 
FROM roles
LEFT JOIN users
ON roles.id = users.id;
SELECT * 
FROM roles 
RIGHT JOIN users
ON roles.id = users.id;

-- 3. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.
SELECT count(roles.name), roles.name
FROM roles
LEFT JOIN users
ON roles.id = users.role_id
GROUP BY roles.name;

-- EMPLOYEES DATABASE
-- 1. Use the employees database.
USE employees;

-- 2. write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' 
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '9999%' AND e.emp_no = dm.emp_no
ORDER BY d.dept_name;

-- 3. Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' 
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '9999%' AND e.emp_no = dm.emp_no AND e.gender = 'F';

-- 4. Find the current titles of employees currently working in the Customer Service department.
SELECT d.dept_name as department, titles.title as title, count(titles.title) AS count
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = d.dept_no
JOIN titles
ON titles.emp_no = e.emp_no
WHERE dept_name = 'Customer Service' AND de.to_date > NOW() AND titles.to_date > NOW()
GROUP BY titles.title;

-- 5. Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Name', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN salaries AS s
ON s.emp_no = dm.emp_no
WHERE s.to_date > now() AND dm.to_date > now()
GROUP BY dept_name, name, salary
OrDER BY dept_name ASC;

-- 6. Find the number of current employees in each department.
SELECT de.dept_no, d.dept_name as 'dept_name', count(e.emp_no) AS 'num_employees' 
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%'
GROUP BY dept_name, dept_no, 'num_employees'
ORDER BY dept_no ASC;

-- 7. Which department has the highest average salary? Hint: Use current not historic information.
SELECT d.dept_name, AVG(s.salary) as average_salary
FROM departments as d 
JOIN dept_emp as de
ON d.dept_no = de.dept_no
JOIN salaries as s
ON de.emp_no = s.emp_no
WHERE s.to_date > NOW() AND de.to_date > NOW() 
GROUP BY d.dept_name
order by average_salary desc LIMIT 1;

-- 8.Who is the highest paid employee in the Marketing department?
SELECT first_name, last_name
FROM employees as e 
JOIN salaries as s
ON e.emp_no = s.emp_no
JOIN dept_emp as de
ON de.emp_no = s.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Marketing' AND s.to_date > NOW() AND de.to_date > NOW()
ORDER BY salary DESC LIMIT 1;

-- 9 Which current department manager has the highest salary?
SELECT e.first_name, e.last_name, s.salary, d.dept_name
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no
JOIN dept_manager as dm
ON s.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
WHERE s.to_date > NOW() AND dm.to_date > NOW()
ORDER BY s.salary DESC LIMIT 1;

-- 10. BONUS
SELECT concat(emp.first_name, ' ', emp.last_name) as 'Employee Name', d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
JOIN dept_emp as de
ON d.dept_no = de.dept_no
JOIN employees as emp
ON de.emp_no = emp.emp_no
WHERE dm.to_date > now() AND de.to_date > NOW()
ORDER BY 'Employee Name' ASC;

-- 11. BONUS
SELECT d.dept_name, s.salary, concat(e.first_name, ' ', e.last_name) as full_name
FROM departments as d
JOIN dept_emp as de
ON d.dept_no = de.dept_no
JOIN salaries as s
ON de.emp_no = s.emp_no
JOIN employees as e
ON s.emp_no = e.emp_no
WHERE de.to_date > NOW() AND s.to_date > NOW()
ORDER BY d.dept_name, s.salary DESC;

