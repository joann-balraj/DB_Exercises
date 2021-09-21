USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
-- 2.) (709) First: Irina Reutenauer Last: Vidya Simmen
USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
-- 3.) (709) First: Irena Acton Last: Vidya Zweizig
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
-- 4.) (619) First: Irena Acton Last: Maya Zyda
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no;
-- 5.) 899 employees returned, First: emp. no.: 10021 first name: Ramzi Last name: Erde. Last: emp. no.: 499648 first name: Tadahiro last name: Erde.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY hire_date ASC;
-- 6.) 899 employees returned. Newest: Teiji Eldridge Oldest: Sergi Erde.
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY hire_date DESC, birth_date DESC;
-- 7.) 806 employees returned. Oldest: Anwar Collavizza Newest: Jouko Dechter

-- #2.&3.):
SELECT UPPER(concat(first_name, last_name)) as full_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
-- 4.):
SELECT first_name, last_name, DATEDIFF(NOW(), hire_date)/365 FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
-- 5.):
SELECT MIN(salary), MAX(salary) from salaries;
-- 6.):
SELECT concat(substring(first_name, 1, 1), last_name, substr(birth_date, 6, 2), substr(birth_date, 3, 2)) as username, first_name, last_name, birth_date FROM employees;