/* select max id with it's name and credit values; from courses table */
SELECT id, NAME, credit FROM courses
ORDER BY id DESC
LIMIT 1;

/* if I need only max value without the row, I use built-in MAX function */
SELECT MAX(id) FROM courses;
/* return one row and one columns with only one value */
/* cannot get the row of max id */

/* Other functions: */
/* MIN, SUM, AVG/* */

/* MAX and MIX can be used with strings */
SELECT MAX(NAME) FROM courses;
