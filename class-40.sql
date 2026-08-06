/*

case, when, then, between, and, else, end

-- <50 cheap
-- 50 -- 200 moderate
-- else expensive


*/



SELECT
    name,
    price::NUMERIC,
    CASE
        WHEN price::NUMERIC < 50 THEN 'Cheap'
        WHEN price::NUMERIC <= 200 THEN 'Moderate'
        WHEN price::NUMERIC <= 300 THEN 'Near Expensive'
        ELSE 'Expensive'
    END AS price_category
FROM products;

