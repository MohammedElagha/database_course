/* select rows which ascending ordered according to name column */
SELECT * FROM courses
ORDER BY NAME;

/* select rows which ascending ordered according to name column */
SELECT * FROM courses
ORDER BY NAME ASC;

/* select rows which descending ordered according to name column */
SELECT * FROM courses
ORDER BY NAME DESC;

/* select rows which ascending ordered according to id column */
SELECT * FROM courses
ORDER BY id;

/* select rows, with start with 'JAVA', which ascending ordered according to id column */
SELECT * FROM courses
WHERE NAME LIKE 'JAVA%'
ORDER BY id;

/* select rows, with end with 'JAVA', which ascending ordered according to credit column */
SELECT * FROM courses
WHERE NAME LIKE '%JAVA'
ORDER BY credit;