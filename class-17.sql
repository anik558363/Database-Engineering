SELECT 
id,
date_of_joining,  --- yyy-mm-dd
to_char(date_of_joining, 'dd-mm-yyy') as dd_mm_yy,
to_char(date_of_joining, 'dd/mm/yyy') as iso_date,
to_char(date_of_joining, 'dd Mon YYY') as short_month,
to_char(date_of_joining, 'dd Month YYY') as full_month,
to_char(date_of_joining, 'Day, DD Mon YYY') as full_readable


FROM employess