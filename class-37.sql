SELECT * FROM products



SELECT max(price::NUMERIC) as max_price FROM products



SELECT min(price::NUMERIC) as min_price FROM products



SELECT sum(price::NUMERIC) as sum_price FROM products


SELECT avg(price::NUMERIC) as avg_price FROM products



SELECT  max(price::NUMERIC) as max_price, min(price::NUMERIC) as min_price, sum(price::NUMERIC) as sum_price, avg(price::NUMERIC) as avg_price  FROM products