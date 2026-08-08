

--- categories table 1
--- products table 2


SELECT * FROM categories LEFT JOIN products ON categories.id = products.category_id;




SELECT p.name as product_name, c.name as category_name FROM categories as c LEFT JOIN products as p ON c.id = p.category_id;



--- categories table 1
--- products table 2
--- users table 3




-- SELECT * FROM categories LEFT JOIN products ON categories.id = products.category_id LEFT JOIN users on products.user_id = users.id





SELECT c.name as category_name, p.name as product_name, u.firstname as user_f_name  FROM


categories as c 


LEFT JOIN
products as p
on c.id = p.category_id


LEFT JOIN 
users as u
on c.user_id = u.id;




SELECT * FROM users LEFT JOIN categories on users.id = categories.user_id