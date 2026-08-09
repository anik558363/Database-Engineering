SELECT * FROM products CROSS JOIN categories 


SELECT  p.name as product_name, c.name as category_name FROM products as p CROSS JOIN categories as c





SELECT 
    p.name as product_name,
    c.name as category_name,
    u.firstname as user_firstName
from 
products as p
CROSS JOIN
categories as c
CROSS JOIN
users as u    