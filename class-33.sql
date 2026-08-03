/*
users 
login optimize ---> email(----)
profile data optimize ---> id(-- pk -- auto index ---)
*/ 


CREATE INDEX idx_users_email ON users(email);



/*
categories
user wise catagories optimize ---> user_id

*/ 




CREATE INDEX idx_categories_user_id ON categories(user_id);





/*

customers

user wise customers optimize ---> user_id
customers wise data lookup ---> email, mobile


*/



CREATE INDEX idx_customers_user_id ON customers(user_id);
CREATE INDEX idx_customers_email ON customers(email);
CREATE INDEX idx_customers_mobile ON customers(mobile);




/*

products

user wise products optimize ---> user_id
products wise data lookup ---> name, category_id


*/



CREATE INDEX idx_products_user_id ON products(user_id);


CREATE INDEX idx_products_name ON products(name);

CREATE INDEX idx_products_category_id ON products(category_id);




/*

invoices

user wise invoices optimize ---> user_id
invoices wise data lookup ---> created_at, customer_id




*/




CREATE INDEX idx_invoices_user_id ON invoices(user_id);

CREATE INDEX idx_invoices_created_at ON invoices(created_at);

CREATE INDEX idx_invoices_customer_id ON invoices(customer_id);




/*

invoice_products

user wise invoice_products optimize ---> user_id
invoice wise data lookup ---> invoice_id, product_id


*/



CREATE INDEX idx_invoice_products_user_id ON invoice_products(user_id);

CREATE INDEX idx_invoice_products_invoice_id ON invoice_products(invoice_id);

CREATE INDEX idx_invoice_products_product_id ON invoice_products(product_id);







/*

composite index

*/



create index idx_products_user_id_category_id on products(user_id, category_id);





