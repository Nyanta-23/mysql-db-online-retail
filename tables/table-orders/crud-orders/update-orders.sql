
-- Pilih id yang pengen di ubah dan pilih jumlah yang ingin di ubah
SET @select_id = 6;
SET @update_amount = 1;

SELECT @price:= price FROM products WHERE id = @product;
SET @total_price = @price * @update_amount;

UPDATE orders
SET
amount = @update_amount,
total_price = @total_price
WHERE id=@select_id;


-- For updating stock in products
SELECT @get_amount := amount FROM orders WHERE id=@select_id;
SET @return_amount = @get_amount - @update_amount;

SELECT @get_product_id := product_id FROM orders WHERE id=@select_id;
SELECT @product_stock := stock FROM products WHERE id=@get_product_id;

SET @update_stock = @return_amount + @product_stock;

UPDATE products SET stock = @update_stock WHERE id=@get_product_id;
SELECT * FROM products;