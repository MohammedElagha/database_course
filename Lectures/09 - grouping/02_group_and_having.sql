/* Grouping and Having */
/* Salaries: id, salary, category */

# select sum of salaries where category is 1
SELECT SUM(salary) FROM salaries
WHERE category = 1;

# select sum of salaries for each category
SELECT SUM(salary) FROM salaries
GROUP BY category;

# select count of salaries for each category
SELECT COUNT(*) FROM salaries
GROUP BY category;

# select sum of salaries for each category, if the sum > 5000
SELECT SUM(salary) FROM salaries
GROUP BY category
HAVING SUM(salary) > 5000;

# select sum of salaries for each category, if the sum > 5000
# and the sum includes only salaries > 1500
SELECT SUM(salary) FROM salaries
WHERE salary > 1500
GROUP BY category
HAVING SUM(salary) > 5000;

# select sum of salaries for each category, if the sum > 5000
# and the sum includes only salaries > 1500
# ordered by sum desc
SELECT SUM(salary) FROM salaries
WHERE salary > 1500
GROUP BY category
HAVING SUM(salary) > 5000
ORDER BY SUM(salary) DESC;

# use of group instead of distinct
SELECT category FROM salaries
GROUP BY category;