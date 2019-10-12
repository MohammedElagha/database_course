/*
One-to-Many Relationship

Example: Student belong to one Collage, and Collage has many Students
*/

/* Create collages Table */
CREATE TABLE collages (
	id INT AUTO_INCREMENT PRIMARY KEY,
	c_name VARCHAR(50)
);

/* Create students Table */
CREATE TABLE students (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(10),
	last_name VARCHAR(10),
	email VARCHAR(30),
	gpa DOUBLE,
	collage_id INT,
	FOREIGN KEY (collage_id) REFERENCES collages(id)
);