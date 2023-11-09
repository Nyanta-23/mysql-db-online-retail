-- Case 1
-- 1 pelanggan membeli 3 barang yang berbeda.

START TRANSACTION;

-- Pilih product dan customer pengen yang mana?
/*
	Pilih dengan id yang sesuai
*/
SET @product = 8;
SET @customer = 2;

-- Masukkan jumlah yang ingin dibeli.
SET @amount = 4;

SELECT @current_stock:= stock FROM products WHERE id = @product;

SET @new_stock:= @current_stock - @amount;

SELECT @price:= price FROM products WHERE id = @product;

SET @total_price = @price + @amount;

INSERT INTO orders
(amount, total_price, customer_id, product_id)
VALUES
(@amount, @total_price, @customer, @product);

UPDATE products SET stock = @new_stock WHERE id = @product;

COMMIT;

SELECT orders.id, orders.amount, orders.total_price, 
customer.name_customer, products.name_product
FROM ((orders 
INNER JOIN customer ON orders.customer_id = customer.id)
INNER JOIN products ON orders.product_id = products.id);

ALTER TABLE orders MODIFY total_price DECIMAL(5,2);