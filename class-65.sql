CREATE OR REPLACE FUNCTION add_product (
    p_name VARCHAR,
    p_price NUMERIC,
    p_unit VARCHAR,
    p_qty int
)

RETURNS VARCHAR

AS $$ DECLARE

    result VARCHAR;

BEGIN

    -- insert logic

    INSERT INTO products(name, price, unit, qty)
    VALUES
    (p_name,p_price,p_unit,p_qty);


    result := 'Success';
    RETURN result;

    EXCEPTION

        WHEN OTHERS THEN
        result := 'Error: ' || SQLERRM;
        RETURN result;

END;
$$ LANGUAGE PLPGSQL;



SELECT add_product(

    'laptop',
    5000,
    'pcs',
    10

)
