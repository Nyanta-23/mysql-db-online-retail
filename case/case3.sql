-- Case 3 Melihat Kategori barang yang paling banyak barangnya.

SELECT category.name_category, COUNT(products.category_id) AS stuff_amount
FROM products
JOIN category ON products.category_id = category.id
GROUP BY name_category
ORDER BY stuff_amount DESC
LIMIT 1;