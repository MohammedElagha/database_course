/*
create table for phones products, 
with id, name, price, is purchased, date and time of purchase.
*/

CREATE TABLE products (
	id INT NOT NULL,
	p_name VARCHAR(50) NOT NULL,
	price DOUBLE NOT NULL,
	is_purchased BOOLEAN DEFAULT FALSE,
	purchased_at TIMESTAMP
);