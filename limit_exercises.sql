SELECT DISTINCT title FROM titles;
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10; 
-- 2.) Zykh
-- Zyda, Zwicker, Zweizig, Zumaque, Zultner, Zucker, Zuberek, Zschoche, Zongker
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date = ('1952-12-25') OR birth_date = ('1953-12-25') OR birth_date = ('1954-12-25') OR birth_date = ('1955-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1957-12-25') OR birth_date = ('1958-12-25') OR birth_date = ('1959-12-25') OR birth_date = ('1960-12-25') OR birth_date = ('1961-12-25') OR birth_date = ('1962-12-25') OR birth_date = ('1963-12-25') OR birth_date = ('1964-12-25') OR birth_date = ('1965-12-25') ORDER BY hire_date LIMIT 5;
-- 3.) Jouko Dechter, Venkatesan Camarinopoulos, Hideo Radhakrishnan, Sadok Biros, Zhongwei Orsini 
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date = ('1952-12-25') OR birth_date = ('1953-12-25') OR birth_date = ('1954-12-25') OR birth_date = ('1955-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1956-12-25') OR birth_date = ('1957-12-25') OR birth_date = ('1958-12-25') OR birth_date = ('1959-12-25') OR birth_date = ('1960-12-25') OR birth_date = ('1961-12-25') OR birth_date = ('1962-12-25') OR birth_date = ('1963-12-25') OR birth_date = ('1964-12-25') OR birth_date = ('1965-12-25') ORDER BY hire_date LIMIT 5 OFFSET 45;
-- 4.) Angel Grospietsch, Miyeon Erbe, Filipp Delgrande, Martial Rossi, Fabrizio Businaro
-- OFFSET: 45 LIMIT: 5 Page number: 5