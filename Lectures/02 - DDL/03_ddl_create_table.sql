/* create new table for students */
CREATE TABLE students (
	id INT,	# maximun length of student's ID is 11 digits
	full_name VARCHAR(50),	# maximun length of student's name is 50 characters
	email VARCHAR(50),
	phone INT(9),
	birth_date DATE,
	gpa DECIMAL(4,2)	# floating number of 4 digits (2 digits before comma, and 2 digits after comma)
);

/* create new table for students, if there is no table, in current database, with the same name */
CREATE TABLE IF NOT EXISTS students (
	id INT,	# maximun length of student's ID is 11 digits
	full_name VARCHAR(50),	# maximun length of student's name is 50 characters
	email VARCHAR(50),
	phone INT(9),
	birth_date DATE
);

/* another example
 */
CREATE TABLE courses (
	id INT,
	number CHAR(9),
	credit INT(1)	# credit of course is 1 or 2 or 3 hours, so it only one digit
);