/* Add new column */
ALTER TABLE students
ADD address TEXT;

/* Remove column */
ALTER TABLE students
DROP address;

/* Alter column (only change datatype) */
ALTER TABLE students
MODIFY COLUMN address VARCHAR(100);	# MODIFY or ALTER (according to version)