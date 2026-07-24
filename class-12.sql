CREATE Table demo_table (
    id SERIAL PRIMARY KEY, --- PRIMARY KEY + AUTO increment
    full_name VARCHAR(50) NOT NULL, --- Required field Validtion 
    email VARCHAR(50) UNIQUE NOT NULL,
    UNIQUE field validtion phone VARCHAR(11),
    age INT CHECK (age >= 18), --- validtion Condition
    is_active BOOLEAN DEFAULT TRUE, --- DEFAULT value
    city VARCHAR(50) DEFAULT "Dhaka", --- DEFAULT Dhaka
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --- Current Time & DATE Auto Insert
    profile1 JSONB DEFAULT '{}'::JSONB, --- JSONB DEFAULT
    profile2 JSON DEFAULT '{}'::JSON, --- JSON DEFAULT
    dress_color TEXT[] DEFAULT ARRAY[]::TEXT[], --- DEFAULT []
    unique_number UUID DEFAULT gen_random_uuid UNIQUE,



)