CREATE OR REPLACE PROCEDURE check_stock_sp(p_id int)
AS $$ 
DECLARE
stock_qty int;

BEGIN

    SELECT qty INTO stock_qty FROM products WHERE id = p_id;

    IF stock_qty = 0 THEN 
        RAISE NOTICE 'Stock is not available';

    ELSEIF stock_qty BETWEEN 1 AND 10 THEN
       RAISE NOTICE 'Low Stock %', stock_qty;

    ELSEIF stock_qty BETWEEN 1 AND 100 THEN
       RAISE NOTICE 'Good Stock %', stock_qty;   

    ELSEIF stock_qty BETWEEN 100 AND 1000 THEN
       RAISE NOTICE 'High Stock %', stock_qty;  

    ELSE    
       RAISE NOTICE 'Stock not found';  

    END IF;   

END; 
$$ LANGUAGE plpgsql;



CALL check_stock_sp(1)