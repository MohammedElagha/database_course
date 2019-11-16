/* Nested Query */

# select employees who are hourly rate >= 18
SELECT id, NAME FROM employees
WHERE salary_id IN (SELECT id FROM salaries WHERE hourly_rate >= 18);

# select salary for employee who is name = 'Mohammed'
SELECT hourly_rate, hours_no FROM salaries
WHERE id IN (SELECT salary_id FROM employees WHERE NAME = 'Mohammed');
