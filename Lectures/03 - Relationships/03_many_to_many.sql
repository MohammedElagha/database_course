/*
Many-to-Many Relationship

Example: Student register many Courses, and Course is registered by many Students
So, middle table is student_courses
*/

/* Create courses Table */
CREATE TABLE courses (
	id INT AUTO_INCREMENT PRIMARY KEY,
	c_name VARCHAR(50),
	c_no CHAR(9),
	credit INT(1)
);

/* Create students Table */
CREATE TABLE students (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(10),
	last_name VARCHAR(10),
	email VARCHAR(30),
	gpa DOUBLE,
	collage_id INT
);

/* Create student_courses Table */
CREATE TABLE student_courses (
	student_id INT,
	course_id INT,
	PRIMARY KEY (student_id, course_id),
	FOREIGN KEY (student_id) REFERENCES students(id),
	FOREIGN KEY (course_id) REFERENCES courses(id)
);