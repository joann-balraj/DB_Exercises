USE employees;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- 2.) 709 Employees
SELECT * FROM employees WHERE first_name = ('Irena')
Or ('Vidya') OR ('Maya');
-- 3.) 241 Employees
SELECT * FROM employees WHERE first_name = 'Irena' AND gender = 'M' OR 'Vidya' AND gender = 'M' OR 'Maya' AND gender = 'M';
-- 4.) 144 Employees
SELECT * FROM employees WHERE last_name LIKE 'E%';
-- 5.) 7330 Employees
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE '%E';
-- 6.) 24292 Employees have a last name that ends with E, but does not start with E.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE last_name LIKE '%E';
-- 7.) 7330 employees' last names start with E. 24292 employees' last names end with E. 
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
-- 8.) 135214 employees hired in the 90s.
SELECT birth_date FROM employees WHERE birth_date = ('1952-12-25') OR birth_date = ('1953-12-25') OR birth_date = ('1954-12-25') OR birth_date = ('1955-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1957-12-25') OR birth_date = ('1958-12-25') OR birth_date = ('1959-12-25') OR birth_date = ('1960-12-25') OR birth_date = ('1961-12-25') OR birth_date = ('1962-12-25') OR birth_date = ('1963-12-25') OR birth_date = ('1964-12-25') OR birth_date = ('1965-12-25');
-- 9.) 842 employees born on Christmas.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date = ('1952-12-25') OR birth_date = ('1953-12-25') OR birth_date = ('1954-12-25') OR birth_date = ('1955-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1957-12-25') OR birth_date = ('1958-12-25') OR birth_date = ('1959-12-25') OR birth_date = ('1960-12-25') OR birth_date = ('1961-12-25') OR birth_date = ('1962-12-25') OR birth_date = ('1963-12-25') OR birth_date = ('1964-12-25') OR birth_date = ('1965-12-25');
-- 10.) 806 employees hired in the 90s and born on christmas.
SELECT * FROM employees WHERE last_name LIKE '%q%';
-- 11.) 1873 employees with a 'q' in their last name.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';
-- 12.) 547 employees with a 'q' in their last name but not 'qu'.
