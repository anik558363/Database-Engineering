-- SELECT * FROM employess WHERE designation is NULL

-- SELECT * FROM employess WHERE designation is NOT NULL


SELECT full_name, NULLIF(salary, 18000) FROM employess