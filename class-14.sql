-- sql conditon function

/*


- condition 01  (when  ------ then)
- condition 02
- condition 03


else


end as result



*/

ALTER TABLE employess ADD COLUMN designation VARCHAR(255);

INSERT INTO
    employess (
        full_name,
        salary,
        date_of_joining,
        designation
    )
VALUES (
        'Monjoy Mondal',
        19000,
        '2026-01-31',
        'Gita Engineer'
    ),
    (
        'Ritu Mondal',
        19000,
        '2026-07-31',
        'Hr Manager'
    ),
    (
        'Emon Mondal',
        18000,
        '2026-05-31',
        'Backend Developer'
    ),
    (
        'Sonjoy',
        22000,
        '2026-05-31',
        'Frontend Developer'
    );
----- multiple value insert

SELECT * FROM employess

SELECT full_name, salary FROM employess

SELECT full_name, salary,

 case
    WHEN salary >= 30000  THEN 'High'
    WHEN salary >= 20000  THEN 'Medium'
    else 'Low'
 end as salary_grade

from employess



SELECT full_name,salary,designation,


    CASE 
        WHEN designation LIKE '%Manager%' THEN 'Management' 
        ELSE  'Employee'
    END as role_type


FROM employess



-- SELECT 
--     full_name,
--     salary,
--     CASE
--         WHEN salary >= 30000 THEN 'High'
--         WHEN salary >= 20000 THEN 'Medium'
--         ELSE 'Low'
--     END AS salary_grade
-- FROM employess;