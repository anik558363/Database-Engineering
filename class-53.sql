SELECT * FROM products




SELECT * FROM products WHERE price BETWEEN 1000 and 5000


SELECT * FROM products WHERE price NOT BETWEEN 1000 and 5000



SELECT * FROM products WHERE price IN(52000.00, 45000.00)

SELECT * FROM products WHERE category IN('Mobile', 'Networking')


SELECT * FROM products WHERE category NOT IN('Mobile', 'Networking')


SELECT * FROM products WHERE EXISTS(

    SELECT 1 FROM products WHERE stock=0

)

SELECT *
FROM products p
WHERE EXISTS (
    SELECT 1
    FROM products p2
    WHERE p2.id = p.id
    AND p2.stock = 0
);


SELECT *
FROM products p
WHERE  NOT EXISTS (
    SELECT 1
    FROM products p2
    WHERE p2.id = p.id
    AND p2.stock < 10
);

SELECT * FROM products WHERE EXISTS(

    SELECT * FROM products WHERE stock>20

)