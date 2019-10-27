/* get max id */
SELECT MAX(id) FROM courses;
/* return one row, with one column is named 'MAX(id)' */

/* how to change name of column of built-in functions */
SELECT MAX(id) AS max_id FROM courses;

/* Change name of columns */
SELECT id AS course_id FROM courses;

/* Change name of columns */
SELECT id AS course_id, NAME AS course_name FROM courses;