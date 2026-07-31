
# Business Requirements



user management:

1. registration, profile, password manage, login


customer management:

1. users can add, udatate, delete, and view their customer details
2. customer information should include name, email and phone number.



category management:

1. users can add, udatate, delete, and view their category details
2. category name



product management:

1. users must be able to create, update, delete and view their product catelog
2. product should be organized under categorires
3. category, name, price, unite, iamge





invoice management:

1. users should be able to generate invoices for customers
2. each invoice should display details such as total amount, discounts, vat and the final payable amount



invoice products management:

1. users must be able to add products to an invoice with quentities and sale prices



sales reporting:

1. data ranage sales report generate




# Data Requirement for Database Desing


users: id, firstName, lastName, email, mobile, password, opt, create_at, updated_at
customers: id, name, email, mobile, create_at, updated_at
categoris: id, name, create_at, updated_at
products: id, product_cat, price, name, unit , image_url, create_at, updated_at
invoice: id, total, discount, vat, payable, customer_datails, create_at, updated_at
invoice_products: id, products_details, qty, sales_price, create_at, updated_at



# Understanding Table Sequence

Sequence: users ---> customers ---> categoris ---> products ---> invoice ---> invoice_products


1. users
2. customers
3. categoris
4. products
5. invoice
6. invoice_products
