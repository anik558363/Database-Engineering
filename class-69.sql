CREATE OR REPLACE PROCEDURE show_products()

AS $$

DECLARE 
    --- variable

BEGIN
    --- process

    RAISE NOTICE 'This is a Notice';
    RAISE INFO 'This is a INFO';
    RAISE WARNING 'This is a WARNING';
   



END;
$$ LANGUAGE PLPGSQL;


CALL show_products();



CREATE OR REPLACE PROCEDURE get_products(p_id int)
AS $$
DECLARE 
    p_name VARCHAR;
BEGIN
    SELECT name into p_name FROM products WHERE id=p_id;
    RAISE NOTICE 'product name: %', p_name;

END;
$$ LANGUAGE PLPGSQL;   



call get_products(1)