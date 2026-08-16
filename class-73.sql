/*

Multi Action


Update -- Action 1
Create -- Action 2
Delete -- Action 2


Update -- Action 1
Update -- Action 2
Update -- Action 3

*/



CREATE OR REPLACE PROCEDURE trans_stock(
    sourch_id INT, ---> stock decrease
    destination_id INT, ---> stock increase
    quantity INT  ---> stock quantity
)
AS $$

BEGIN

    --- stock decrease
    UPDATE products set qty = qty - quantity WHERE id = sourch_id;


    --- stock increase
    UPDATE products set qty = qty + quantity WHERE id = destination_id;

    -- commit
    COMMIT;


END; 
$$ LANGUAGE plpgsql;



CALL trans_stock(3, 1, 70);