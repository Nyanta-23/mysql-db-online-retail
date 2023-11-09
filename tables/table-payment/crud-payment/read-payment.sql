
SELECT payment.id, payment.date_payment, payment.total, orders.id, payments_method.payment_method
FROM ((payment
INNER JOIN orders ON payment.id_order = orders.id)
INNER JOIN payments_method ON payment.payment_method = payments_method.id);