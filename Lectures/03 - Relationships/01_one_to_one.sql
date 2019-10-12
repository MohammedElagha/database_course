/*
One-to-One Relationship

Example: Employee has one Salary row, and Salary belong to one Employee
*/

/* Create salaries Table */
CREATE TABLE salaries (
	id INT AUTO_INCREMENT PRIMARY KEY,
	hours_no INT,
	hourly_rate DOUBLE
);

/* Create employees Table */
CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(10),
	last_name VARCHAR(10),
	address TEXT,
	salary_id INT,
	FOREIGN KEY (salary_id) REFERENCES salaries(id)
);