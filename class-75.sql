/*

-- customers(id), products(id)
-- order(id, customer_id, product_id)




*/


CREATE TABLE customers(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);



INSERT INTO customers (name, email)
VALUES
('Rabbil Hasan', 'rabbil@gmail.com'),
('Karim Ahmed', 'karim@gmail.com'),
('Rahim Uddin', 'rahim@gmail.com'),
('Sakib Khan', 'sakib@gmail.com'),
('Nusrat Jahan', 'nusrat@gmail.com');



DROP Table customers

CREATE Table products(

    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL

)


INSERT INTO products (name, price)
VALUES 
('Laptop', 75000),
('Keyboard', 2500),
('Mouse', 1200),
('Monitor', 25000),
('Headphone', 3500),
('Webcam', 4500);



CREATE Table orders(

    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,

    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(id)

)





INSERT INTO orders (customer_id, product_id, quantity)
VALUES 
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(2, 5, 1),
(3, 4, 1),
(3, 3, 1),
(4, 6, 2),
(5, 1, 1),
(5, 5, 2);




/*

-- customers c, products p, orders o

*/

SELECT 

o.id as order_id,
c.name as customer_name,
p.name as product_name,
o.quantity as product_qty,
p.price as product_price,
o.quantity * p.price as total

FROM orders as O
JOIN customers as c on c.id = o.customer_id
JOIN products as p on p.id = o.product_id;




CREATE OR REPLACE VIEW customer_orders AS 
SELECT 
o.id as order_id,
c.name as customer_name,
p.name as product_name,
o.quantity as product_qty,
p.price as product_price,
o.quantity * p.price as total
FROM orders as O
JOIN customers as c on c.id = o.customer_id
JOIN products as p on p.id = o.product_id;




SELECT * FROM customer_orders WHERE total = 2500.00