CREATE Table example_table(

    id SERIAL PRIMARY KEY,    ----- SERIAL(int 2.1b), BITSERIAL(64-BIT)
    col1 BIGINT,   ----- INTEGER(2.1b), smallint(32k), bigint(larg int)
    col2 NUMERIC(10, 2),  ---- NUMERIC, DECIMAL Financial data
    col3 DOUBLE (10, 4), --- DOUBLE, REAL
    col4 TEXT,  --- CHAR(255), VARCHAR(100), TEXT
    col5 BOOLEAN, --- BOOLEAN true, false
    col6 TIME,   --- DATE only, TIME only, TIMESTAMP(data + time)
    col7 JSON,  --- JSON (json text), JSONB (binary JSON text)
    col8 array, --- ARRAY TEXT
    col9 UUID, UNIQUE number

);
