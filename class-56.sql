DROP Table products

/*

1. Demo Table products --> id, product_name, description
2. Demo Data insert 
3. Search: LIKE Search --> LIKE '%Apple%'

    - simple,
    - smail,
    - Medium 1k
    - search korleay full table screan korteay hoi

4. Full Text Search (FTS)
    - Large
    - Robust
    - Speed    
    - index use koreay first text search korteay pareay
    - to_tsvector(--- col ---)
    - @@to_tsquery(--- Keyword ---)
    - Blog Search
    - News Search
    - Large Content Search
    - Documentation Search


5.  to_tsvector(cal) ---> Text keay search vector ay convert koreay
    text ----------> Lightweight laptop with Apple M4 processor.
    vector token ----> 'apple':4 'advanced':1 'camera':5 'smartphone':2 (Search vector / token ) 

6.  @@to_tsquery(Keyword) ---> Search keyword keay query teay convert koreay    
    keyword -----> 'android smartphone 2026' 
    output  -----> android & smartphone & 2026
    Match   -----> table ---> col ---> description


7. Details of gin
   - gin ----> (generalized inverted index) 
   - full text searche - ar jono beshe index
   - proteay te word keay kono kono row-teay ache tar mapping songroho koreay
   - postgresql pora table scan na koreay sorasoreay matching rows chjeay peay
   - large dataset-a search performance oneay bareay deay


8. add vector column

9. vector data populate

10. create gin index

11. vector search / full text search ---> use gin index

12. gin index search flow

    ---> keyword ---> search vector ---> index ---> search result



*/


CREATE Table products(

    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    description TEXT

)



INSERT INTO products (product_name, description) VALUES
('iPhone 16 Pro', 'Apple flagship smartphone with A18 Pro chip.'),
('Samsung Galaxy S25', 'Premium Android smartphone with AMOLED display.'),
('Google Pixel 10', 'Clean Android experience with AI-powered camera.'),
('OnePlus 13', 'Fast performance and smooth OxygenOS experience.'),
('Xiaomi 15 Ultra', 'High-end smartphone with Leica camera system.'),
('MacBook Air M4', 'Lightweight laptop with Apple M4 processor.'),
('Dell XPS 15', 'Professional laptop with Intel Core Ultra processor.'),
('HP Spectre x360', 'Convertible laptop with OLED touchscreen.'),
('Lenovo ThinkPad X1', 'Business laptop known for durability and keyboard.'),
('ASUS ROG Zephyrus G16', 'Gaming laptop with RTX graphics.'),
('Sony WH-1000XM6', 'Noise-cancelling wireless headphones.'),
('AirPods Pro 3', 'Wireless earbuds with active noise cancellation.'),
('JBL Flip 7', 'Portable Bluetooth speaker with powerful sound.'),
('Apple Watch Series 11', 'Smartwatch with advanced health tracking.'),
('Samsung Galaxy Watch 8', 'Wear OS smartwatch with fitness features.'),
('Logitech MX Master 4', 'Ergonomic wireless productivity mouse.'),
('Keychron K8 Pro', 'Mechanical keyboard with hot-swappable switches.'),
('Razer DeathAdder V4', 'High-performance gaming mouse for esports.'),
('Canon EOS R8', 'Full-frame mirrorless camera for photography.'),
('GoPro Hero 14', 'Action camera with 5.3K video recording.'),
('Kindle Paperwhite 2026', 'E-reader with glare-free display.'),
('TP-Link Archer AX90', 'Wi-Fi 6 router for fast home networking.'),
('Seagate 2TB SSD', 'Portable solid-state drive for fast storage.'),
('SanDisk Extreme 256GB', 'High-speed microSD card for cameras.'),
('Anker 100W Charger', 'Fast USB-C charger for laptops and phones.'),
('LG UltraFine 27', '27-inch 4K monitor for creative professionals.'),
('BenQ MOBIUZ EX2710', 'Gaming monitor with 165Hz refresh rate.'),
('Nintendo Switch 2', 'Hybrid gaming console with improved performance.'),
('PlayStation 5 Slim', 'Next-generation gaming console with 4K support.'),
('Xbox Series X', 'Powerful gaming console with Game Pass support.');



SELECT * FROM products 
WHERE product_name LIKE '%Samsung%'
OR description LIKE '%Game%'



SELECT * FROM products
WHERE to_tsvector(description)
@@to_tsquery('Game')



SELECT * FROM products
WHERE to_tsvector(description)
@@to_tsquery('Game & laptop & ---- & ----')


SELECT * FROM products
WHERE to_tsvector(description)
@@to_tsquery('Game | laptop' | ----- |)




/*


add search_vector column


*/


ALTER TABLE products ADD COLUMN search_vector tsvector




/*

vector data populate

*/


UPDATE products SET search_vector= to_tsvector(

    'english',
     product_name || '' || description


)


/*

create gin index

*/


CREATE INDEX idx_product_search
ON products USING  GIN(search_vector)




/*

vector search / full text search ---> use gin index

*/



SELECT * FROM products WHERE search_vector @@to_tsquery('OnePlus')



SELECT * FROM products WHERE search_vector @@to_tsquery('OnePlus & Google & Samsung')


SELECT * FROM products WHERE search_vector @@to_tsquery(' Google | Samsung')