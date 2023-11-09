SELECT orders.id, orders.amount, orders.total_price, 
customer.name_customer, products.name_product
FROM ((orders 
INNER JOIN customer ON orders.customer_id = customer.id)
INNER JOIN products ON orders.product_id = products.id);