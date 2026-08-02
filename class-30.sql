CREATE Table users (
    

    id BIGSERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    pass VARCHAR(500) NOT NULL,
    otp VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
    
    );





    -- user_id BIGINT == id BIGINT
    -- FOREIGN KEY (user_id)
    -- FOREIGN users(id)



CREATE Table categories (
    

    
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    -- user_id ----> categories(user_id) ---> users(id)
    user_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

    
    );

CREATE Table customers (
    
    
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    mobile VARCHAR(15) NOT NULL,

    user_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE RESTRICT,


    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
    
    
    );

CREATE Table products (
    
    
    id BIGSERIAL PRIMARY KEY,


    name VARCHAR(50) NOT NULL,
    price VARCHAR(50) NOT NULL,
    unit VARCHAR(50) NOT NULL,
    img_url VARCHAR(100) NOT NULL,


    user_id BIGINT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE RESTRICT,


    category_id BIGINT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE RESTRICT,



    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
    
    );

CREATE Table invoices (
    
    
    id BIGSERIAL PRIMARY KEY,





    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    
    
    );

CREATE Table invoice_products (
    
    
    
    id BIGSERIAL PRIMARY KEY,



    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    
    
    );