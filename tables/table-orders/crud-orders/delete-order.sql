
-- Pilih id yang mau dipilih
SET @delete_id = 8;

SELECT @select_product := product_id FROM orders WHERE id=@delete_id;

SELECT @returning_amount := amount FROM orders WHERE id=@delete_id;
SELECT @stock_product := stock FROM products WHERE id=@select_product;

SET @update_stock = @returning_amount + @stock_product;

UPDATE products
SET stock = @update_stock
WHERE @select_product;

DELETE FROM orders WHERE id=@delete_id;