CREATE TABLE orders(
	id INT NOT NULL AUTO_INCREMENT,
	amount INT NOT NULL,
	total_price DECIMAL(5,2) NOT NULL,
	customer_id INT,
	product_id INT,
PRIMARY KEY(id),
FOREIGN KEY(customer_id) REFERENCES customer(id),
FOREIGN KEY(product_id) REFERENCES products(id)
);
