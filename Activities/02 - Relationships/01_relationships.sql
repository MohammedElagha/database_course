/*
There are Guest who has id, name, phone.
There are Room which has id, room_no, floor_no.

guest can reserve one or more room.
reservation is limited by start and end date of reservation.
*/

CREATE TABLE guests (
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(55),
	phone BIGINT
);

CREATE TABLE rooms (
	id INT PRIMARY KEY AUTO_INCREMENT,
	r_no INT(3),	# Room number is often 3 digits
	floor_no INT(2)	# Floor number often not be larger than 99.
);

/*
intermediate table is reservations.
So, start and end date of reservation put it this table.
*/
CREATE TABLE reservations (
	guest_id INT,
	room_id INT,
	start_date DATE,
	end_date DATE,
	PRIMARY KEY (guest_id, room_id),
	FOREIGN KEY (guest_id) REFERENCES guests(id),
	FOREIGN KEY (room_id) REFERENCES rooms(id)
);

