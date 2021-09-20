USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
-- 2.) First: Irina Reutenauer Last: Vidya Simmen
USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
-- 3.) First: Irena Acton Last: Vidya Zweizig
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
-- 4.) First: Irena Acton Last: Maya Zyda
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no;
-- 5.) 899 employees returned, First: emp. no.: 10021 first name: Ramzi Last name: Erde. Last: emp. no.: 499648 first name: Tadahiro last name: Erde.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY hire_date ASC;
-- 6.) 899 employees returned. Newest: Teiji Eldridge Oldest: Sergi Erde.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date = ('1952-12-25') OR birth_date = ('1953-12-25') OR birth_date = ('1954-12-25') OR birth_date = ('1955-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1957-12-25') OR birth_date = ('1958-12-25') OR birth_date = ('1959-12-25') OR birth_date = ('1960-12-25') OR birth_date = ('1961-12-25') OR birth_date = ('1962-12-25') OR birth_date = ('1963-12-25') OR birth_date = ('1964-12-25') OR birth_date = ('1965-12-25') ORDER BY hire_date DESC, birth_date DESC;
-- 7.) 806 employees returned. Oldest: Khun Bernini Newest: Jouko Dechter