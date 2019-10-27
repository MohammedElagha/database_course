/* 
LIMIT operator control of maximum number of rows of result 
e.g. if I have 30 rows in table, and limit = 20, then the query returns only 20 rows
e.g. if I have 30 rows in table, and limit = 40, then the query returns 30 rows
*/

/* select first 3 rows from courses */
SELECT * FROM courses
LIMIT 3;

/* select first 3 rows, which name start with JAVA, from courses */
SELECT * FROM courses
WHERE NAME LIKE 'JAVA%'
LIMIT 3;

/* select first 10 rows, which name start with JAVA and end with 1, from courses */
SELECT * FROM courses
WHERE NAME LIKE 'JAVA%' AND NAME LIKE '%1'
LIMIT 10;

/* select last 10 rows, which name start with JAVA and end with 1, from courses */
/* last 10 according to id */
SELECT * FROM courses
WHERE NAME LIKE 'JAVA%' AND NAME LIKE '%1'
ORDER BY id DESC
LIMIT 10;