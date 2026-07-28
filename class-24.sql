# Data Requirement for Database Desing


users: id, firstName, lastName, email, mobile, password, opt, create_at, updated_at
customers: id, name, email, mobile, create_at, updated_at
categoris: id, name, create_at, updated_at
products: id, product_cat, price, name, unit , image_url, create_at, updated_at
invoice: id, total, discount, vat, payable, customer_datails, create_at, updated_at
invoice_products: id, products_details, qty, sales_price, create_at, updated_at