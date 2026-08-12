TRUNCATE Table products


INSERT INTO products (name, price, unit, qty)
VALUES 
('Rice', 75.00, 'kg', 100),
('Sugar', 120.00, 'kg', 50),
('Milk', 90.00, 'liter', 30),
('Egg', 12.00, 'pcs', 500),
('Oil', 180.00, 'liter', 25);




UPDATE products set name='polao', price=120.00, unit='box' WHERE id = 10;



UPDATE products set price = price + 100


UPDATE products set price = price - 100


UPDATE products set price = price*1.05


UPDATE products set price = price*1.05 WHERE price > 100;


