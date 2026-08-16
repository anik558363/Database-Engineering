CREATE OR REPLACE PROCEDURE add_new_product(p_name VARCHAR, p_price NUMERIC, p_unit VARCHAR, p_qty int)
AS $$

BEGIN

INSERT INTO products(name, price, unit, qty)
VALUES(p_name, p_price, p_unit, p_qty);


END;
$$ LANGUAGE PLPGSQL;


CALL add_new_product('hello', 100, 'kg', 32);




CREATE OR REPLACE PROCEDURE delete_product_procedure(p_id INTEGER)

AS $$

BEGIN

DELETE FROM products WHERE id = p_id;


END;
$$ LANGUAGE PLPGSQL;



CALL delete_product_procedure(4);




CREATE OR REPLACE PROCEDURE update_products_procedure(p_id INTEGER) AS $$ 
BEGIN 
    UPDATE products 
    SET price = 100,
        qty = 23
    WHERE id = p_id; 
END; 
$$ LANGUAGE plpgsql;


CALL update_products_procedure(3)



CREATE OR REPLACE PROCEDURE update_by_id(p_id int, p_qty INT)

AS $$

BEGIN 
    UPDATE products 
    SET qty = p_qty
    WHERE id = p_id; 
END; 
$$ LANGUAGE plpgsql;


CALL update_by_id(3, 100);