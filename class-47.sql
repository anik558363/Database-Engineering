--- categories table 2
--- products table 1


SELECT p.name as product_name, c.name category_name FROM categories as c RIGHT JOIN products as p on c.id = p.category_id


