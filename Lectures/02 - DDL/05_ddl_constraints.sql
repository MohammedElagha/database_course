/* Inline Constraint */
CREATE TABLE students (
	id INT NOT NULL UNIQUE,		# not null and unique
	full_name VARCHAR(50) NOT NULL,	# not null
	email VARCHAR(50),
	phone INT(9),
	birth_date DATE CHECK (birth_date > '1950-12-31')	# must be older than 1950/12/31
);

/* Inline Constraint */
CREATE TABLE courses (
	id INT,
	number CHAR(9) NOT NULL,	# not null
	credit INT(1) DEFAULT 3		# = 3 by default
);




