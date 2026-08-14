DROP Table products




CREATE TABLE products(

    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    unit VARCHAR(20) NOT NULL,
    qty INTEGER NOT NULL DEFAULT 0

);


/*

id (optional),
name (string, 255, mandatory),
price (number, 111111111.99, mandatory)
unit (string,20, mandatory)
qty  (INTEGER, mandatory, default 0)

*/



INSERT INTO products(name, price, unit, qty) VALUES('Rice', 75.20, 'kg', 5)



INSERT INTO products(name, price, unit, qty) VALUES('sugar', 75.20, 'kg', 5)


INSERT INTO products(name, price, unit) VALUES('egg', 75.20, 'kg')



INSERT INTO products(name, price, unit, qty)
VALUES ('test1', 86.20, 'kg', 5),
('test2', 47.20, 'kg', 4),
('test3', 82.20, 'kg', 41);



