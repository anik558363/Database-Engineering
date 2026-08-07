SELECT name,price FROM (... sub query... ) as table_alias



SELECT 
product_name,
base_price,
discount_price,
base_price - discount_price as final_price
from(

    SELECT 
    name as product_name,
    price::NUMERIC as base_price,

    CASE
        WHEN price::NUMERIC > 200 THEN price::NUMERIC * 0.10
        WHEN price::NUMERIC > 100 THEN price::NUMERIC * 0.05
        ELSE 0
    END AS discount_price
    FROM products

) as product_table