/*

-- reduce application side calculations
-- faster reporting queries
-- useful for analytics dashboards
-- simplifies backend apis

*/


SELECT * FROM products


SELECT name, price FROM products



SELECT 
name,
price::NUMERIC as base_price,
price::NUMERIC * 0.10 as vat_price,
price::NUMERIC * 1.10 as final_price
FROM products


SELECT 
name,
price::NUMERIC as base_price,
price::NUMERIC * 0.10 as vat_price,
price::NUMERIC * 1.10 as final_price,

price::NUMERIC > 200 as is_expensive

FROM products
