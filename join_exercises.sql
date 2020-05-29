
use employees;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date like '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date like '9999-01-01' AND e.gender like 'F'
ORDER BY d.dept_name;

SELECT t.title as 'Title', COUNT(t.emp_no) as 'Count'
FROM dept_emp as d
         JOIN titles t on d.emp_no = t.emp_no
WHERE t.to_date like '9999-01-01' AND d.dept_no like 'd009'
GROUP BY t.title;






