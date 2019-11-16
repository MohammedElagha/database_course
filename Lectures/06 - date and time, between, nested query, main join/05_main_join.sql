/* Main Join */

# Two tables, One to One
SELECT * FROM employees, salaries
WHERE employees.salary_id = salaries.id;

# Two tables, One to One, with Alias
SELECT e.name, s.hours_no, s.hourly_rate FROM employees e, salaries s
WHERE e.salary_id = s.id;

# Three Tables, Many to Many, with Alias
SELECT s.name AS student_name, c.name AS course_name, registered_courses rc
WHERE c.id = rc.course_id
AND s.id = rc.student_id;