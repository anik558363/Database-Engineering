SELECT p.name as product_name, p.price as product_price, c.name as category_name FROM
products as p INNER JOIN categories as c
ON p.category_id = c.id


SELECT * FROM
customers INNER JOIN invoices 
ON customers.id = invoices.customer_id



SELECT c.id, c.name, c.name, c.mobile, i.total, i.payable, i.discount, i.customer_id FROM
customers as c INNER JOIN invoices as i
ON c.id = i.customer_id


SELECT * FROM invoices INNER JOIN customers on invoices.customer_id = customers.id