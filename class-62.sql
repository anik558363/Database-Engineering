CREATE OR REPLACE FUNCTION getProducts()
RETURNS TABLE (id int, name VARCHAR, price NUMERIC, unit VARCHAR, qty int)

AS $$ BEGIN 

RETURN query
SELECT p.id, p.name, p.price, p.unit, p.qty FROM products as p;

END;
$$ LANGUAGE PLPGSQL