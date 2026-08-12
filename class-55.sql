CREATE Table products(

    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE,
    price NUMERIC(10, 2) NOT NULL,
    stock INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 

);


/*  demo data insert query */


INSERT INTO products 
(name, slug, price, stock, description)
VALUES
('iPhone 15 Pro', 'iphone-15-pro', 129999.00, 15, 'Apple iPhone 15 Pro with A17 Pro chip and titanium design.'),

('Samsung Galaxy S24', 'samsung-galaxy-s24', 89999.00, 20, 'Samsung Galaxy S24 with powerful performance and AMOLED display.'),

('Google Pixel 8', 'google-pixel-8', 74999.00, 12, 'Google Pixel 8 with advanced camera and clean Android experience.'),

('OnePlus 12', 'oneplus-12', 78000.00, 18, 'OnePlus 12 with Snapdragon processor and fast charging.'),

('Xiaomi Redmi Note 13 Pro', 'xiaomi-redmi-note-13-pro', 32999.00, 25, 'Redmi Note 13 Pro with high-resolution camera and AMOLED display.'),

('MacBook Air M3', 'macbook-air-m3', 145000.00, 8, 'Apple MacBook Air powered by the M3 chip.'),

('Dell Inspiron 15', 'dell-inspiron-15', 72000.00, 10, 'Dell Inspiron laptop suitable for work, study and entertainment.'),

('HP Pavilion 15', 'hp-pavilion-15', 68000.00, 14, 'HP Pavilion 15 with modern design and reliable performance.'),

('Lenovo ThinkPad E14', 'lenovo-thinkpad-e14', 65000.00, 9, 'Business-class Lenovo ThinkPad E14 laptop.'),

('ASUS VivoBook 15', 'asus-vivobook-15', 59000.00, 16, 'ASUS VivoBook 15 designed for everyday productivity.'),

('Sony WH-1000XM5', 'sony-wh-1000xm5', 42000.00, 7, 'Premium wireless noise-cancelling headphones from Sony.'),

('AirPods Pro 2', 'airpods-pro-2', 28000.00, 22, 'Apple AirPods Pro with active noise cancellation.'),

('JBL Flip 6', 'jbl-flip-6', 12500.00, 30, 'Portable Bluetooth speaker with powerful sound.'),

('Logitech MX Master 3S', 'logitech-mx-master-3s', 9500.00, 11, 'Advanced wireless mouse for productivity and creative work.'),

('Keychron K2 Keyboard', 'keychron-k2-keyboard', 11500.00, 13, 'Wireless mechanical keyboard with RGB backlight.'),

('TP-Link Archer C6', 'tp-link-archer-c6', 4200.00, 35, 'Dual-band AC1200 Wi-Fi router for home and office.'),

('Canon EOS 2000D', 'canon-eos-2000d', 52000.00, 5, 'Entry-level DSLR camera suitable for photography beginners.'),

('GoPro HERO 12', 'gopro-hero-12', 48000.00, 6, 'Action camera with high-quality video recording.'),

('Apple Watch Series 9', 'apple-watch-series-9', 45000.00, 10, 'Apple smartwatch with health and fitness tracking features.'),

('Samsung Galaxy Watch 6', 'samsung-galaxy-watch-6', 32000.00, 17, 'Samsung smartwatch with fitness and health monitoring.'),

('Anker Power Bank 20000mAh', 'anker-power-bank-20000mah', 4500.00, 40, 'High-capacity power bank with fast charging support.'),

('UGREEN USB-C Hub', 'ugreen-usb-c-hub', 3500.00, 27, 'Multi-port USB-C hub for laptops and tablets.'),

('Samsung 27 Inch Monitor', 'samsung-27-inch-monitor', 28000.00, 9, '27-inch Full HD monitor for office and entertainment.'),

('LG UltraGear Gaming Monitor', 'lg-ultragear-gaming-monitor', 38000.00, 4, 'Gaming monitor with high refresh rate and low response time.'),

('Razer DeathAdder V3', 'razer-deathadder-v3', 8500.00, 19, 'Lightweight gaming mouse designed for competitive gaming.'),

('Corsair K70 RGB', 'corsair-k70-rgb', 16500.00, 8, 'Mechanical RGB gaming keyboard with premium switches.'),

('Nintendo Switch OLED', 'nintendo-switch-oled', 42000.00, 3, 'Nintendo Switch OLED gaming console with vibrant display.'),

('PlayStation 5 Slim', 'playstation-5-slim', 68000.00, 0, 'Sony PlayStation 5 Slim gaming console.'),

('Xbox Series X', 'xbox-series-x', 65000.00, 0, 'Microsoft Xbox Series X high-performance gaming console.'),

('Amazon Echo Dot', 'amazon-echo-dot', 6500.00, 0, 'Compact smart speaker with Alexa voice assistant.');




 /*

Union

1. ভিন্ন Table thkeay akeay dororeay data anteay holeay
2. reporting toreay koreay holeay
3. Archive + current data aksateay dakateay holeay
4. Join = Colums bareay
5. Union = Rows bareay
6. 1st = 10  Union 2nd = 15 => 10 + 15



Union All

1. ভিন্ন Table thkeay akeay dororeay data anteay holeay
2. reporting toreay koreay holeay
3. Archive + current data aksateay dakateay holeay
4. Join = Colums bareay
5. Union = Rows bareay
6. 1st = 10  Union 2nd = 15 => 10 + 15



Union VS Union All

1. Union ---> duplicate rows  ---> reomove duplicate  ---> Unique
2. Union All ---> duplicate rows --> not remove ---> not Unique


*/



SELECT name,price,stock FROM products WHERE price < 32999.00
UNION
SELECT name,price,stock FROM products WHERE stock < 10


SELECT name,price,stock FROM products WHERE price < 32999.00
UNION ALL
SELECT name,price,stock FROM products WHERE stock < 10