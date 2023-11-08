/*
	Create and Delete Database
*/

CREATE DATABASE online_retail;

DROP DATABASE online_retail;

/*
	Create Table & Delete Customers
*/

CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255),
	age INT,
	address TEXT,
	phone VARCHAR(255)
);

DROP TABLE products(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	price INT (255) NOT NULL,
	quantity INT NOT NULL,
	description TEXT,
	category_id INT,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE category;

CREATE TABLE order_products;



SHOW TABLES;