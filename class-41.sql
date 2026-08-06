/*

-- apply discount rules
    -- price > 200 -> 10% discount
    -- price > 100 -> 5% discount
    -- otherwise -> no discount


*/



SELECT 
name,
price::NUMERIC as base_price,
CASE 
WHEN price::NUMERIC > 200 THEN price::NUMERIC * 0.1
WHEN price::NUMERIC > 100 THEN price::NUMERIC * 0.05
ELSE 0
END as discounted_price



FROM products


SELECT
    name,
    price::NUMERIC AS base_price,

    CASE
        WHEN price::NUMERIC > 200 THEN price::NUMERIC * 0.10
        WHEN price::NUMERIC > 100 THEN price::NUMERIC * 0.05
        ELSE 0
    END AS discount,

    CASE
        WHEN price::NUMERIC > 200 THEN price::NUMERIC - (price::NUMERIC * 0.10)
        WHEN price::NUMERIC > 100 THEN price::NUMERIC - (price::NUMERIC * 0.05)
        ELSE price::NUMERIC
    END AS final_price,

    case 

        WHEN price::NUMERIC > 200 THEN price::NUMERIC - ( price::NUMERIC  * 0.10 )
        WHEN price::NUMERIC > 00 THEN price::NUMERIC - ( price::NUMERIC  * 0.05 )
        ELSE price::NUMERIC

    end as my_final_price




FROM products;