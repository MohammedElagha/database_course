CREATE TABLE clients (
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(44),
	phone BIGINT,
	email VARCHAR(100),
	profit_percentage DOUBLE
);

CREATE TABLE durations (
	id INT PRIMARY KEY AUTO_INCREMENT,
	period INT,
	unit ENUM('DD', 'MM', 'YY')
);

CREATE TABLE subscriptions (
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME TEXT,
	price DOUBLE,
	duration_id INT,
	FOREIGN KEY (duration_id) REFERENCES durations (id)
);

CREATE TABLE client_subscriptions (
	id INT PRIMARY KEY AUTO_INCREMENT,
	client_id INT,
	subscription_id INT,
	start_date DATE,
	expire_date DATE, # expire, expiry
	FOREIGN KEY (client_id) REFERENCES clients (id),
	FOREIGN KEY (subscription_id) REFERENCES subscriptions (id)
);

CREATE TABLE drivers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(44),
	phone BIGINT
);

CREATE TABLE promo_codes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	promo_code TEXT,
	discount_percentage DOUBLE,
	driver_id INT,
	FOREIGN KEY (id) REFERENCES drivers (id)
);

CREATE TABLE travels (
	id INT PRIMARY KEY AUTO_INCREMENT,
	driver_id INT,
	client_subscription_id INT,
	payed DOUBLE,
	distance DOUBLE,
	FOREIGN KEY (driver_id) REFERENCES drivers (id),
	FOREIGN KEY (client_subscription_id) REFERENCES client_subscriptions (id)
);

CREATE TABLE used_promo_codes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	travel_id INT,
	promo_code_id INT,
	FOREIGN KEY (travel_id) REFERENCES travels (id),
	FOREIGN KEY (promo_code_id) REFERENCES promo_codes (id)
);