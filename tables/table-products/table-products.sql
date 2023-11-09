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