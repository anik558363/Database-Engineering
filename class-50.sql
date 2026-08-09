CREATE Table sales(

    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    category VARCHAR(50),
    amount NUMERIC(10, 2),
    city VARCHAR(50)


)



--- customer ---> group ---> having
--- category ---> group ---> having
--  city ---> group ---> having



INSERT INTO sales (customer_name, category, amount, city) VALUES
('Rahim', 'Electronics', 25000.00, 'Dhaka'),
('Karim', 'Furniture', 18000.00, 'Chattogram'),
('Rahim', 'Clothing', 4500.00, 'Dhaka'),
('Tanvir', 'Electronics', 32000.00, 'Khulna'),
('Karim', 'Groceries', 2200.00, 'Rajshahi'),
('Rahim', 'Furniture', 27000.00, 'Sylhet'),
('Tanvir', 'Clothing', 6800.00, 'Dhaka'),
('Rahim', 'Groceries', 1500.00, 'Barishal'),
('Karim', 'Electronics', 41000.00, 'Chattogram'),
('Tanvir', 'Furniture', 12500.00, 'Rangpur')