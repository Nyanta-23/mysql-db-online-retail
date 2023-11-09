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