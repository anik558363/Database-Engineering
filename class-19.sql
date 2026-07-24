-- SELECT
-- salary,
-- round(salary)  as salary_round,  --- round   .5 > 1 , .5 < 0
-- ceil(salary)  as salary_ceil,  --- ceil   .5 > 1 , .5 < 1
-- FLOOR(salary)  as salary_floor,  --- floor   .5 > 0 , .5 < 0
-- salary * 2 as salary_mul,  --- salary*2 = mul
-- salary + 2 as salary_sum,  --- salary*2 = sum
-- salary - 2 as salary_sub,  --- salary*2 = sum
-- salary / 2 as salary_sub  --- salary*2 = div
-- from employess


-- SELECT

-- salary * 1.10 as salary_increased

-- FROM employess



-- SELECT 


-- salary - (salary * 0.15 ) as salary_decresed

-- FROM employess



-- SELECT

-- salary,

-- POWER(salary, 2) as salary_power,
-- SQRT(salary) as salary_sqrt

-- FROM employess



SELECT 

salary,

salary * 0.05 as only_tax,

salary - (salary * 0.05) as salary_after_tax


FROM employess