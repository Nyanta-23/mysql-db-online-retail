SET @id_order = 5;
SET @payment_method = 1;

SELECT @total_price := total_price FROM orders WHERE id = @id_order;


SELECT * FROM payments_method;


SELECT payment.id, payment.date_payment, payment.total, orders.id, payments_method.payment_method
FROM ((payment
INNER JOIN orders ON payment.id_order = orders.id)
INNER JOIN payments_method ON payment.payment_method = payments_method.id);


INSERT INTO payment
(date_payment, total, id_order, payment_method)
VALUES
(NOW(), @total_price, @id_order, @payment_method);