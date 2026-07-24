SELECT
REPLACE(full_name, 'A', '@') as replace_name,

substring(full_name FROM 1 for 3) as substring_name,

full_name, 
lower(full_name) AS lower_name,
upper(full_name) AS upper_name,
char_length(full_name) AS char_len,
length(full_name) AS bytes_len,
reverse(full_name) AS rev_name,

trim(full_name) as trim_name,
ltrim(full_name) as rtrim_name,
rtrim(full_name) as rtrim_name,

concat(full_name, '- Employe') as concet_name,

concat(full_name, ' - ', salary) as salary_name,

concat(full_name, ' - ', salary, '-', date_of_joining) as salary_name_data



FROM employess