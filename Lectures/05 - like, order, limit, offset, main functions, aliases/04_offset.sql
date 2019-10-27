/* offset is index of first row in select result */

/* select first 3 rows */
SELECT * FROM courses
LIMIT 3 OFFSET 0;

/* select second 3 rows */
SELECT * FROM courses
LIMIT 3 OFFSET 3;

/* select only 10 rows after 7th row */
SELECT * FROM courses
LIMIT 10 OFFSET 7;

/* select second 3 rows, which name start with JAVA, from courses */
SELECT * FROM courses
WHERE NAME LIKE 'JAVA%'
LIMIT 3 OFFSET 3;

/* select second 3 rows, which name start with JAVA, from courses; in descending ordered result */
SELECT * FROM courses
WHERE NAME LIKE 'JAVA%'
ORDER BY id DESC
LIMIT 3 OFFSET 3;

/* if I have 30 rows, and offset = 78. Result has 0 rows (offset > max index) */
SELECT * FROM courses
LIMIT 10 OFFSET 78;