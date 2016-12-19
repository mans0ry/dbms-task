-- Remove this line, if extension exist

CREATE EXTENSION pgcrypto;

-- Table Product Type

CREATE TABLE product_type(
    code varchar(20) primary key,
    description text default NULL
);

-- Table Products

CREATE TABLE products(
    id uuid primary key default gen_random_uuid(),
    type varchar(20) references product_type(code),
    name varchar(20) NOT NULL,
    price decimal(10, 2) CHECK (price > 0) NOT NULL,
    description text default NULL
) ;

-- Table Games

CREATE TABLE games(
    id uuid references products(id),
    type varchar(20) default 'game' references product_type(code),
    tech_characters varchar(20) NOT NULL,
    multiplayer Boolean default FALSE
);

-- Table Consoles

CREATE TABLE consoles(
    id uuid references products(id),
    type varchar(20) default 'console' references product_type(code),
    drive_type varchar(20) NOT NULL,
    weight decimal(5, 2) NOT NULL
);

-- Table Accessories

CREATE TABLE accessories(
    id uuid references products(id),
    type varchar(20) default 'accessory' references product_type(code),
    wireless Boolean default FALSE
);

-- Table Customer

CREATE TABLE customers(
    id bigserial primary key,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL,
    sex varchar(1) NOT NULL,
    birth_date timestamp,
    address varchar(50) NOT NULL
);

-- Table Orders

CREATE TABLE orders(
    id bigserial primary key,
    customer_id integer references customers(id),
    order_date timestamp,
    total_price decimal(10, 2) CHECK (total_price > 0),
    details varchar(20)
);

-- Table connecting Products and customer Order

CREATE TABLE order_products(
    order_id integer references orders(id),
    id uuid references products(id),
    amount integer set default 1
);
