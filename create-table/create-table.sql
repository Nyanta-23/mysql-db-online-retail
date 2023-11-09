CREATE TABLE customer(
	id INT NOT NULL AUTO_INCREMENT,
	name_customer VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	no_phone VARCHAR(255) NOT NULL,
	address TEXT NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE category(
	id INT NOT NULL AUTO_INCREMENT,
	name_category VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMENT,
	name_product VARCHAR(255) NOT NULL,
	price INT NOT NULL,
	stock INT NOT NULL,
	description TEXT,
	category_id INT,
PRIMARY KEY(id),
FOREIGN KEY(category_id) REFERENCES category(id)
);

CREATE TABLE orders(
	id INT NOT NULL AUTO_INCREMENT,
	amount INT NOT NULL,
	total_price INT NOT NULL,
	customer_id INT,
	product_id INT,
PRIMARY KEY(id),
FOREIGN KEY(customer_id) REFERENCES customer(id),
FOREIGN KEY(product_id) REFERENCES products(id)
);


CREATE TABLE payments_method(
	id INT NOT NULL AUTO_INCREMENT,
	payment_method VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE payment(
	id INT NOT NULL AUTO_INCREMENT,
	date_payment DATE,
	total INT,
	id_order INT,
	payment_method INT,
PRIMARY KEY(id),
FOREIGN KEY(id_order) REFERENCES orders(id),
FOREIGN KEY(payment_method) REFERENCES payments_method(id)
);