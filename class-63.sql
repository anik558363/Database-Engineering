
CREATE OR REPLACE FUNCTION get_products_by_id(p_id INT)
RETURNS TABLE (id int, name VARCHAR, price NUMERIC)

AS $$ BEGIN 

RETURN query
SELECT p.id, p.name, p.price FROM products as p WHERE p.id =p_id;

END;
$$ LANGUAGE PLPGSQL



SELECT * FROM get_products_by_id(3);
