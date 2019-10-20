/* Delete all rows in 'courses' */
DELETE FROM courses;

/* Delete only JAVA course */
DELETE FROM courses
WHERE NAME = 'JAVA';

/* Delete all rows, and reset temporary values (such as: auto increment initial value) */
TRUNCATE courses;