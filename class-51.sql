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



SELECT customer_name, COUNT(customer_name) AS total_sales
FROM sales
GROUP BY customer_name
HAVING COUNT(customer_name) > 4;


SELECT 
    customer_name,
    SUM(amount) AS total_amount
FROM sales
GROUP BY customer_name
HAVING SUM(amount) > 50000;




SELECT customer_name FROM sales;

SELECT DISTINCT customer_name FROM sales;


SELECT DISTINCT category FROM sales;


SELECT DISTINCT city FROM sales;



SELECT  customer_name, category, city  FROM sales;


SELECT DISTINCT customer_name, category, city  FROM sales;