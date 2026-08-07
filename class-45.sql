SELECT * FROM 
products as p 
INNER JOIN
categories as c
on p.category_id = c.id
INNER JOIN
users as u
on p.user_id = u.id;


SELECT p.name as product_name, p.price as product_price, c.name as category_name, u.email as user_email FROM 
products as p 
INNER JOIN
categories as c
on p.category_id = c.id
INNER JOIN
users as u
on p.user_id = u.id;