-- Create database
CREATE DATABASE IF NOT EXISTS lifeinvader CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE lifeinvader;

-- Categories table
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    max_items INT NOT NULL,
    rules TEXT
);

-- Real Estate tables
CREATE TABLE property_types (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    display_name VARCHAR(50) NOT NULL,
    can_trade BOOLEAN DEFAULT false,
    can_rent BOOLEAN DEFAULT true
);

-- Vehicle tables
CREATE TABLE vehicle_brands (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE vehicles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    brand_id INT,
    model VARCHAR(100) NOT NULL,
    is_sellable BOOLEAN DEFAULT true,
    can_rent BOOLEAN DEFAULT true,
    base_price DECIMAL(15,2),
    FOREIGN KEY (brand_id) REFERENCES vehicle_brands(id)
);

-- Clothing tables
CREATE TABLE clothing_categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    display_name VARCHAR(50) NOT NULL
);

CREATE TABLE clothing_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    category_id INT,
    gender ENUM('male', 'female', 'unisex') DEFAULT 'unisex',
    is_luminous BOOLEAN DEFAULT false,
    quality ENUM('medium', 'high', 'max') DEFAULT NULL,
    is_skinned BOOLEAN DEFAULT false,
    FOREIGN KEY (category_id) REFERENCES clothing_categories(id)
);

-- Insert clothing categories
INSERT INTO clothing_categories (name, display_name) VALUES 
('top_hoodie', 'Top/Hoodie'),
('pants', 'Pants'),
('shoes', 'Shoes'),
('accessory', 'Accessory'),
('headwear_mask', 'Headwear/Mask'),
('watch', 'Watch'),
('backpack', 'Backpack'),
('dress', 'Dress');

-- Insert vehicle brands
INSERT INTO vehicle_brands (name) VALUES 
('Annis'),
('Benefactor'),
('Ubermacht'),
('Grotti'),
('Obey'),
('Pegassi'),
('Bravado'),
('Karin'),
('Declasse'),
('Enus'),
('Coil'),
('Truffade'),
('Pfister'),
('Ocelot'),
('Emperor'),
('Gallivanter');

-- Insert property types
INSERT INTO property_types (name, display_name) VALUES
('house', 'House'),
('apartment', 'Apartment'),
('mansion', 'Mansion'),
('penthouse', 'Penthouse');

-- Insert clothing items (Top/Hoodie)
INSERT INTO clothing_items (name, category_id, gender, is_luminous) VALUES
('Social Club hoodie', 1, 'unisex', false),
('Air Bior pullover sweater', 1, 'unisex', false),
('black jacket with yellow trim', 1, 'unisex', false),
('bomber jacket with glowing elements', 1, 'unisex', true),
('branded insulated hoodie', 1, 'unisex', false),
('branded longsleeve', 1, 'unisex', false),
('branded T-shirt', 1, 'unisex', false),
('bright hoodie', 1, 'unisex', false),
('branded Molo T-shirt', 1, 'unisex', false),
('Casual neon set', 1, 'unisex', false),
('Casual neon torso', 1, 'unisex', false),
('Chanel top', 1, 'unisex', false),
('collection 2022 T-shirt', 1, 'unisex', false),
('cropp collection T-shirt', 1, 'unisex', false),
('denim jacket', 1, 'unisex', false),
('fur coat without a hood', 1, 'unisex', false),
('Grand RP collection hoodie', 1, 'unisex', false),
('Grand RP collection T-shirt', 1, 'unisex', false),
('haliky hoodie', 1, 'unisex', false),
('haliky T-shirt', 1, 'unisex', false),
('jacket with luminous trim', 1, 'unisex', true),
('jacket with T-shirt', 1, 'unisex', false),
('Lui Vi jacket', 1, 'unisex', false),
('Lui Vi sweatshirt', 1, 'unisex', false),
('Lui Vi full set', 1, 'unisex', false),
('Lui Vi T-shirt', 1, 'unisex', false),
('LM Playboy sweatshirt with luminous print', 1, 'unisex', true),
('Lui Vi top', 1, 'unisex', false),
('Mikachu hoodie', 1, 'unisex', false),
('mix collection T-shirt', 1, 'unisex', false),
('Muci hoodie', 1, 'unisex', false),
('Muci hoodie with snake', 1, 'unisex', false),
('Muci Not Fake hoodie', 1, 'unisex', false),
('Muci sweatshirt', 1, 'unisex', false),
('Niki new collection hoodie', 1, 'unisex', false),
('Niki tech top', 1, 'unisex', false),
('Niki track suit top', 1, 'unisex', false),
('Off-White sweatshirt', 1, 'unisex', false),
('Philip Plein T-shirt', 1, 'unisex', false),
('scary turtleneck T-shirt', 1, 'unisex', false),
('Social Club hoodie', 1, 'unisex', false),
('summer collection T-shirt', 1, 'unisex', false),
('The West Pace jacket', 1, 'unisex', false),
('trendy jacket', 1, 'unisex', false),
('TRON full Set', 1, 'unisex', false),
('TRON torso', 1, 'unisex', false),
('Tsum collection T-shirt', 1, 'unisex', false),
('vintage Abibas Olympic Jerseys', 1, 'unisex', false),
('luminous jacket with turquoise trim', 1, 'unisex', true),
('luminous T-shirt', 1, 'unisex', true),
('UP-Green Sweatshirt', 1, 'unisex', false);

-- Insert clothing items (Pants)
INSERT INTO clothing_items (name, category_id, gender, is_luminous) VALUES
('Abibas pants', 2, 'unisex', false),
('Abibas sport pants', 2, 'unisex', false),
('Abibas sweatpants', 2, 'unisex', false),
('bright trousers', 2, 'unisex', false),
('Bior pants', 2, 'unisex', false),
('Grand RP collection pants', 2, 'unisex', false),
('Muci pants', 2, 'unisex', false),
('Muci trousers', 2, 'unisex', false),
('half-glowing pants', 2, 'unisex', true),
('insulated personal pants', 2, 'unisex', false),
('Lui Vi pants', 2, 'unisex', false),
('luminous Fendi pants', 2, 'unisex', true),
('luminous Grand RP trousers', 2, 'unisex', true),
('LM Playboy pants with luminous print', 2, 'unisex', true),
('luminous trousers', 2, 'unisex', true),
('new fashionable joggers', 2, 'unisex', false),
('Niki new collection pants', 2, 'unisex', false),
('Niki tech fleece pants', 2, 'unisex', false),
('Niki track suit pants', 2, 'unisex', false),
('summer voyage shorts', 2, 'unisex', false),
('neon pants', 2, 'unisex', true);

-- Insert clothing items (Shoes)
INSERT INTO clothing_items (name, category_id, gender, is_luminous) VALUES
('Abibas Marquee Boost Lows shoes', 3, 'unisex', false),
('Abibas Pro Bounce 2019 Lows shoes', 3, 'unisex', false),
('Abibas Pezy Boost 700 V3 Alvah shoes', 3, 'unisex', false),
('luminous shoes', 3, 'unisex', true),
('Off-White luminous Keezy Boost shoes', 3, 'unisex', true),
('Niki Groundporce One new collection shoes', 3, 'unisex', false),
('Niki Shox shoes', 3, 'unisex', false),
('Niki Uptempo shoes', 3, 'unisex', false),
('Niki Zoom Freak 1 Multi-Color shoes', 3, 'unisex', false),
('RGB neon shoes', 3, 'unisex', true),
('rare luminous shoes', 3, 'unisex', true),
('Pezy Boost shoes', 3, 'unisex', false);

-- Insert clothing items (Backpacks)
INSERT INTO clothing_items (name, category_id, quality, is_skinned) VALUES
('skinned medium quality backpack', 7, 'medium', true),
('unskinned medium quality backpack', 7, 'medium', false),
('high quality bear backpack', 7, 'high', false),
('high quality Calvin Klein backpack', 7, 'high', false),
('skinned max quality backpack', 7, 'max', true),
('unskinned high quality backpack', 7, 'high', false),
('unskinned max quality backpack', 7, 'max', false),
('high quality Bior backpack', 7, 'high', false),
('high quality Muci backpack', 7, 'high', false),
('high quality Lui Vi backpack', 7, 'high', false),
('high quality Niki backpack', 7, 'high', false);

-- Insert clothing items (Watches)
INSERT INTO clothing_items (name, category_id) VALUES
('Vasio G-Shock watch', 6),
('Volex watch of type *', 6),
('Kolex watch of type *', 6);

-- Create indexes
CREATE INDEX idx_vehicles_brand ON vehicles(brand_id);
CREATE INDEX idx_vehicles_model ON vehicles(model);
CREATE INDEX idx_clothing_category ON clothing_items(category_id);
CREATE INDEX idx_clothing_name ON clothing_items(name);