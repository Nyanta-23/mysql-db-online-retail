-- Case 2 Melihat 3 produk yang paling sering dibeli oleh pelanggan.

SELECT products.name_product, COUNT(product_id) AS amount
FROM orders
JOIN products ON orders.product_id = products.id
GROUP BY product_id
ORDER BY amount DESC
LIMIT 3;