CREATE OR REPLACE FUNCTION check_stock(p_id int)
RETURNS VARCHAR 

AS $$

DECLARE

    stock_qty int;

BEGIN

    SELECT qty INTO stock_qty FROM products WHERE id=p_id;

    IF stock_qty IS NULL THEN
        RETURN 'Product not found';
    ELSEIF stock_qty = 0 THEN     
        RETURN 'out of stock';
    ELSEIF stock_qty BETWEEN 1 AND 10 THEN     
        RETURN 'low stock';
    ELSEIF stock_qty BETWEEN 11 AND 50 THEN     
        RETURN 'Medium stock';        
    ELSEIF stock_qty > 50 THEN     
        RETURN 'In stock';  
    ELSE    
        RETURN 'Invalid stock'; 
    END if;    


END;
$$ LANGUAGE PLPGSQL;



SELECT check_stock(3342534)