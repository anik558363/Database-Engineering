SELECT name, price::NUMERIC FROM products


SELECT name, CAST(price as NUMERIC) FROM products



SELECT avg(price::NUMERIC) as avg_price FROM products


SELECT price::JSON FROM products


/*

SMALLINT, SMALLINT, DECIMAL, BIGINT, TEXT, VARCHAR, DATA, TIME, TIMESTAMP, BOOLEAN, JSON

*/