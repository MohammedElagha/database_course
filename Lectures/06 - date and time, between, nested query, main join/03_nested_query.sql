/* Nested Query */

/* 1 - 1 or 1 - M */
# select employees who are hourly rate >= 18
SELECT id, NAME FROM employees
WHERE salary_id IN (SELECT id FROM salaries WHERE hourly_rate >= 18);

# select salary for employee who is name = 'Mohammed'
SELECT hourly_rate, hours_no FROM salaries
WHERE id IN (SELECT salary_id FROM employees WHERE NAME = 'Mohammed');

####################################################################################

/* M - M */

# select students who registered JAVA 1 Course
SELECT NAME, phone FROM students
WHERE id IN (SELECT student_id FROM registered_courses WHERE course_id IN (
		SELECT course_id FROM courses WHERE NAME = 'JAVA 1 Programming'));
        
####################################################################################

# Nested Query in Field List
SELECT id, name, (SELECT hourly_rate FROM salaries WHERE id = employees.salary_id) FROM employees
WHERE salary_id IN (SELECT id FROM salaries WHERE hourly_rate >= 18);
