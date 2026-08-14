CREATE OR REPLACE FUNCTION total_products()
RETURNS INTEGER

AS $$  
DECLARE
    total INTEGER;
    -- var 2
    -- var 3
    -- var 4

BEGIN  

    -- business logic
    SELECT COUNT(*) INTO total FROM products; 
    RETURN total;


END;
$$ LANGUAGE PLPGSQL;




SELECT * FROM total_products();