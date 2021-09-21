SELECT DISTINCT title FROM titles;
SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10; 
-- 2.) Zykh, Zyda, Zwicker, Zweizig, Zumaque, Zultner, Zucker, Zuberek, Zschoche, Zongker
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY hire_date LIMIT 5;
-- 3.) Alselm Cappello, Utz Mandell, Bouchung Schreiter, Baocai Kushner, Petter Stroustrup
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date, hire_date DESC LIMIT 5 OFFSET 45;
-- 4.) Piyawadee Bultermann, Heng Luft, Yuqun Kandlur, Basil Senzako, Mabo Zobel
-- OFFSET: 45 LIMIT: 5 Page number: 5