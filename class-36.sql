/*

1. Make column name more readable
2. simplify long table names
3. improve join query readability




*/



SELECT * FROM products


SELECT * FROM products WHERE id = 5



SELECT name, price, unit FROM products


SELECT name, price, unit FROM products WHERE id = 5


SELECT name as product_name, price as product_price, unit as product_unit FROM products



SELECT max(price) as product_max_price FROM products


SELECT name as product_name, price as product_price, unit as product_unit FROM products as my_product_tabile