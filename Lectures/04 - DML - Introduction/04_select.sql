/* select id and c_no of all courses */
SELECT id, c_no FROM courses;

/* select id and c_no of courses which credit > 2 */
SELECT id, c_no FROM courses
WHERE credit > 2;

/* select all columns of courses which credit not equals 2 */
SELECT * FROM courses
WHERE credit != 2;