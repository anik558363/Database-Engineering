CREATE OR REPLACE FUNCTION update_product(p_id int, p_qty int)
RETURNS VARCHAR
AS $$

BEGIN

    UPDATE products set qtyjklj=p_qty WHERE id=p_id;
    RETURN 'SUCCESS';

    EXCEPTION
      WHEN OTHERS THEN
      RETURN 'ERROR ' || SQLERRM;

END;
$$ LANGUAGE PLPGSQL;


SELECT update_product(1, 30);




CREATE OR REPLACE FUNCTION delete_product(p_id int)
RETURNS VARCHAR
AS $$
BEGIN

    delete FROM products WHERE id=p_id;
    RETURN 'SUCCESS';

    EXCEPTION
      WHEN OTHERS THEN
      RETURN 'ERROR ' || SQLERRM;

END;
$$ LANGUAGE PLPGSQL;


SELECT delete_product(5)

