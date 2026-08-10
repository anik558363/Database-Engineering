CREATE Table sales(

    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    category VARCHAR(50),
    amount NUMERIC(10, 2),
    city VARCHAR(50)


)


INSERT INTO sales (customer_name, category, amount, city) VALUES
('Sakib', 'Electronics', 18500.00, 'Dhaka'),
('Nadia', 'Clothing', 7500.00, 'Chattogram'),
('Jahid', 'Groceries', 3200.00, 'Khulna'),
('Mim', 'Furniture', 22000.00, 'Rajshahi'),
('Siam', 'Electronics', 45000.00, 'Sylhet'),
('Tania', 'Clothing', 9200.00, 'Dhaka'),
('Hasan', 'Groceries', 2800.00, 'Barishal'),
('Rafi', 'Furniture', 16500.00, 'Rangpur'),
('Sumaiya', 'Electronics', 37500.00, 'Chattogram'),
('Fahim', 'Clothing', 5600.00, 'Khulna'),

('Arif', 'Electronics', 29000.00, 'Dhaka'),
('Nusrat', 'Furniture', 19500.00, 'Sylhet'),
('Imran', 'Groceries', 4100.00, 'Rajshahi'),
('Sadia', 'Clothing', 8300.00, 'Barishal'),
('Shuvo', 'Electronics', 52000.00, 'Chattogram'),
('Rima', 'Furniture', 14500.00, 'Dhaka'),
('Mehedi', 'Groceries', 3600.00, 'Rangpur'),
('Jannat', 'Clothing', 6700.00, 'Khulna'),
('Rakib', 'Electronics', 33500.00, 'Sylhet'),
('Lamia', 'Furniture', 24000.00, 'Rajshahi');


SELECT * FROM sales



CREATE Table products(

    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price NUMERIC(10, 2),
    stock int


)



INSERT INTO products (product_name, category, price, stock) VALUES
('iPhone 15 Pro', 'Mobile', 125000.00, 8),
('Samsung Galaxy A55', 'Mobile', 45000.00, 17),
('Xiaomi Redmi Note 13 Pro', 'Mobile', 38000.00, 25),
('Realme GT 6', 'Mobile', 52000.00, 12),
('Vivo V30', 'Mobile', 42000.00, 14),

('HP EliteBook 840', 'Laptop', 85000.00, 7),
('Dell Latitude 5420', 'Laptop', 76000.00, 9),
('MacBook Air M2', 'Laptop', 115000.00, 5),
('ASUS ROG Strix G16', 'Laptop', 145000.00, 4),
('Acer Aspire 5', 'Laptop', 62000.00, 11),

('Sony WH-1000XM5', 'Headphone', 32000.00, 10),
('JBL Tune 760NC', 'Headphone', 8500.00, 18),
('Anker Soundcore Q30', 'Headphone', 7500.00, 20),
('AirPods Pro 2', 'Headphone', 28000.00, 13),
('Realme Buds Air 5', 'Headphone', 4500.00, 30),

('Dell 27 Inch Monitor', 'Monitor', 28000.00, 8),
('LG UltraGear 24 Inch', 'Monitor', 22000.00, 12),
('Samsung 32 Inch Curved Monitor', 'Monitor', 35000.00, 6),
('AOC 24G2 Gaming Monitor', 'Monitor', 19500.00, 15),
('MSI 27 Inch Gaming Monitor', 'Monitor', 42000.00, 5),

('Logitech K380 Keyboard', 'Accessories', 3800.00, 24),
('Redragon Mechanical Keyboard', 'Accessories', 5500.00, 16),
('Logitech MX Master 3S', 'Accessories', 9500.00, 10),
('HP Wireless Mouse', 'Accessories', 1800.00, 35),
('UGREEN USB Hub', 'Accessories', 2500.00, 27),

('D-Link WiFi Router', 'Networking', 2800.00, 20),
('Tenda AC10 Router', 'Networking', 3500.00, 18),
('TP-Link Archer C6', 'Networking', 4200.00, 15),
('MikroTik hAP Lite', 'Networking', 5200.00, 9),
('Xiaomi WiFi Extender', 'Networking', 2200.00, 25);



SELECT * FROM products;

SELECT * FROM products ORDER BY price ASC  ---> 1,2,3,4....


SELECT * FROM products ORDER BY price DESC  ---> 100,99,98,97,....


SELECT * FROM products ORDER BY product_name DESC  ---> 100,99,98,97,....

SELECT * FROM products ORDER BY product_name ASC  ---> 100,99,98,97,....









SELECT * FROM products LIMIT 10



SELECT * FROM products ORDER BY id DESC LIMIT 5




SELECT * FROM products ORDER BY id ASC LIMIT 5



SELECT * FROM products ORDER BY price DESC LIMIT 5



SELECT * FROM products LIMIT 10 OFFSET 0


SELECT * FROM products LIMIT 5 OFFSET 15






SELECT * FROM products LIMIT 5 OFFSET 0 ---> skip 0 take 5 ---> page 01



SELECT * FROM products LIMIT 5 OFFSET 5 ---> skip 5 take 5 ---> page 02



SELECT * FROM products LIMIT 5 OFFSET 10 ---> skip 10 take 5 ---> page 03


SELECT * FROM products LIMIT 5 OFFSET 15 ---> skip 15 take 5 ---> page 04




SELECT * FROM products LIMIT 10 OFFSET 0


SELECT * FROM products LIMIT 10 OFFSET 10


SELECT * FROM products LIMIT 10 OFFSET 20


SELECT * FROM products LIMIT 10 OFFSET 40