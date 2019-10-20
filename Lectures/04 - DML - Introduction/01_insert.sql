/* Add new row to 'courses' without AUTO_INCREMENT id */
INSERT INTO courses (NAME, c_no, credit)
VALUES ('DBMS', 'ITCTC1988', 3);

/* Add new row to 'courses', with new order of columns */
INSERT INTO courses (c_no, NAME, credit)
VALUES ('ITCTC1988', 'DBMS', 3);


/* How to add values to all columns (if there is no AUTO_INCREMENT column) */
INSERT INTO courses
VALUES (2, 'ITCTC1988', 'DBMS', 3);
