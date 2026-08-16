CREATE OR REPLACE PROCEDURE print_numbers()
AS $$
DECLARE
    counter INT :=1;
BEGIN

    LOOP 

        RAISE NOTICE 'Counting Number = %', counter;

        counter := counter + 1;

        EXIT WHEN counter > 100;

    END LOOP;

END; 
$$ LANGUAGE plpgsql;