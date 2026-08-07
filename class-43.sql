SELECT * FROM products





SELECT * FROM
products INNER JOIN categories
ON products.category_id = categories.id



SELECT * FROM
categories INNER JOIN products
ON categories.id = products.category_id



SELECT p.name as product_name, p.price as product_price, c.name as category_name FROM
products as p INNER JOIN categories as c
ON p.category_id = c.id