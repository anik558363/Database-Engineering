/*

category 
    sub-category
      child-category
      



category


Electronics
  --- Mobile
        --- Android Phone
        --- iPhone
  --- Laptop
        --- Gaming Laptop
        --- Business Laptop
Fashion
  --- Men
        --- Shirt
        --- Pant
  --- Women
        --- Saree
        --- Salwar Kameez


*/




CREATE TABLE categorires(

    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    parent_id int

)




----- Normal select
SELECT * FROM categorires




----- self join query

/*

self join query root categories, sub categories


categories + categories

*/

SELECT 
R.name as root_category_name,
S.name as sub_category 
FROM categorires as R
JOIN categorires as S
ON R.id = S.parent_id;




----- self join query

/*

self join query root categories, sub categories, child categories


categories + categories + categories

*/

SELECT 

R.name as root_category_name,
S.name as sub_category, 
C.name as child_category

FROM categorires as R
JOIN categorires as S
ON R.id = S.parent_id
JOIN categorires c
ON S.id = C.parent_id;





SELECT 
R.name as root_category,
S.name as sub_category,
C.name as child_category
FROM categorires as R
JOIN categorires as S
ON  R.id = S.parent_id
JOIN categorires as C
ON S.id = C.parent_id 





