INSERT INTO products 
(name_product, price, stock, description, category_id)
VALUES 
('Industrial Tool', 89.99, 30, 'A tool for industrial use.', 10);

ALTER TABLE products
MODIFY price DECIMAL(5,2);

DELETE FROM products WHERE id=2;

SELECT * FROM products;


-- For inserting Data
-- 'Super Gadget', 99.99, 100, 'A super cool gadget.', 1
-- 'Awesome Book', 19.99, 50, 'An awesome book to read.', 2
-- 'Stylish Shirt', 29.99, 200, 'A stylish shirt for all occasions.', 3
-- 'Kitchen Set', 49.99, 150, 'A set of essential kitchen tools.', 4
-- 'Sports Equipment', 59.99, 80, 'High-quality sports equipment.', 5
-- 'Health Supplement', 39.99, 120, 'A supplement for your health.', 6
-- 'Fun Game', 24.99, 300, 'A fun game for the whole family.', 7
-- 'Car Accessory', 34.99, 60, 'A useful accessory for your car.', 8
-- 'Gourmet Food', 14.99, 500, 'Delicious gourmet food.', 9
-- 'Industrial Tool', 89.99, 30, 'A tool for industrial use.', 10
