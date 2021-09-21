USE employees;
SHOW CREATE TABLE titles;
SELECT DISTINCT title FROM titles;
-- 2.) 7
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%e';

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';
-- 5.) Chleq, Lindqvist, Qiwen
SELECT DISTINCT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY last_name;
SELECT DISTINCT COUNT(first_name), first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY first_name;



SELECT LOWER(concat(substring(first_name, 1, 1), substring(last_name, 1, 4), substr(birth_date, 6, 2), substr(birth_date, 3, 2))) as username, count(*) FROM employees GROUP BY username HAVING COUNT(*) >1;
-- 8 285872 Duplicates: 13251