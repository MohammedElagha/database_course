/* select rows which name start with 'Programming' */
/* including rows which name start with nothing */
SELECT NAME, c_no, credit FROM courses
WHERE NAME LIKE 'Programming%'

/* select rows which name end with 'Programming' */
/* including rows which name end with nothing */
SELECT NAME, c_no, credit FROM courses
WHERE NAME LIKE '%Programming'

/* select rows which name contains 'Programming' */
/* including rows which name start and/or end with nothing */
SELECT NAME, c_no, credit FROM courses
WHERE NAME LIKE '%Programming%'

/* select rows which name contains '1' */
/* including rows which name start and/or end with nothing */
SELECT NAME, c_no, credit FROM courses
WHERE NAME LIKE '%1%'