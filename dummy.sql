truncate table users cascade;




INSERT INTO users (firstName, lastName, email, mobile, pass, otp)
VALUES
('Anik', 'Mondol', 'anik@example.com', '01711111111', 'password123', '1234'),
('Rahim', 'Ahmed', 'rahim@example.com', '01822222222', 'password123', '5678'),
('Karim', 'Hasan', 'karim@example.com', '01933333333', 'password123', '9999');



INSERT INTO categories (name, user_id)
VALUES
('Electronics', 66),
('Fashion', 64),
('Groceries', 66),
('Books', 65);



INSERT INTO customers (name, email, mobile, user_id)
VALUES
('John Doe', 'john@example.com', '01755555555', 64),
('Jane Smith', 'jane@example.com', '01866666666', 66),
('Rakib Hasan', 'rakib@example.com', '01977777777', 65),
('Sakib Khan', 'sakib@example.com', '01688888888', 64);


INSERT INTO products (name, price, unit, img_url, user_id, category_id)
VALUES
('Laptop', '75000', 'pcs', 'laptop.jpg', 64, 29),
('Smartphone', '25000', 'pcs', 'phone.jpg', 66, 32),
('T-Shirt', '800', 'pcs', 'tshirt.jpg', 64, 30),
('Rice', '70', 'kg', 'rice.jpg', 66, 31),
('Programming Book', '1200', 'pcs', 'book.jpg', 65, 32);



INSERT INTO invoices (total, discount, vat, payable, user_id, customer_id)
VALUES
('100000', '5000', '14250', '109250', 66, 4),
('30000', '1000', '4350', '33350', 64, 5),
('5000', '0', '750', '5750', 65, 2),
('2400', '200', '330', '2530', 66, 3);



INSERT INTO invoice_products (qty, sale_price, user_id, product_id, invoice_id)
VALUES
('1', '75000', 65, 7, 6),
('1', '25000', 66, 5, 3),

('1', '25000', 66, 4, 6),
('5', '1000', 64, 3, 5),

('50', '70', 64, 4, 3),

('2', '1200', 65, 5, 4);