-- Active: 1784898867726@@127.0.0.1@5432@my_first_database
/*

Advantages:

1. Code Reusability: akbar function lekeay barbar use korteay parbo
2. Reduce Duplicate sql: akeoy query barbar lekeay teay hoi na
3. Centralize Business Logic: Business Logic Database a raka jeay
4. Better Maintainability: 10 jageay query poreboton na koreay sodeo function poreboton korleay hobeay
5. Security: user-keay table access na deay function access deay jeay
6. Encapsulation: Complex logic hide kora jeay
7. Performance: complex query prefined function - a rakeay network round trip komeay
8. parameter support: dynamic input neay jeay
9. Transactional logic: ak function ay modeay multiple query execute kora jeay
10. cleaner application code: application code oneak clean thkeay





Production Use Cases
1. Inventory Stock Calculation
2. Sales Report Generation
3. Discount Calculation
4. Tax Calculation
5. Payroll Processing
6. Dashboard Statistics
7. Data Validation



*/






CREATE Table products(

    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    unit VARCHAR(20) NOT NULL,
    qty INTEGER NOT NULL DEFAULT 0

)


INSERT INTO products (name, price, unit, qty)
VALUES
('Rice', 75.00, 'kg', 100),
('Sugar', 120.00, 'kg', 50),
('Milk', 90.00, 'liter', 30),
('Egg', 12.00, 'pcs', 500),
('Oil', 180.00, 'liter', 25);







