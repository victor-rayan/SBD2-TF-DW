-- Create database InstacartMarketBasket
CREATE DATABASE IF NOT EXISTS InstacartMarketBasket;

-- Use database InstacartMarketBasket
USE InstacartMarketBasket;

CREATE TABLE IF NOT EXISTS orders (
    order_id int PRIMARY KEY,
    user_id int,
    eval_set VARCHAR(300),
    order_number int,
    order_dow int,
    order_hour_of_day int,
    days_since_prior_order FLOAT
);

CREATE TABLE IF NOT EXISTS products (
    product_id int PRIMARY KEY,
    product_name VARCHAR(300),
    aisle_id int,
    department_id int
);

CREATE TABLE IF NOT EXISTS aisles (
    aisle_id int PRIMARY KEY,
    aisle VARCHAR(300)
);

CREATE TABLE IF NOT EXISTS departments (
    department_id int PRIMARY KEY,
    department VARCHAR(300)
);

CREATE TABLE IF NOT EXISTS order_products__prior (
    product_id int,
    order_id int,
    add_to_cart_order int,
    reordered BIT
);

CREATE TABLE IF NOT EXISTS order_products__train (
    product_id int,
    order_id int,
    add_to_cart_order int,
    reordered BIT
);

-- Create Foreign Keys
ALTER TABLE products ADD CONSTRAINT FK_products_2
    FOREIGN KEY (aisle_id)
    REFERENCES aisles (aisle_id)
    ON DELETE RESTRICT;

ALTER TABLE products ADD CONSTRAINT FK_products_3
    FOREIGN KEY (department_id)
    REFERENCES departments (department_id)
    ON DELETE RESTRICT;

ALTER TABLE order_products__prior ADD CONSTRAINT FK_order_products__prior_1
    FOREIGN KEY (product_id)
    REFERENCES products (product_id)
    ON DELETE RESTRICT;

ALTER TABLE order_products__prior ADD CONSTRAINT FK_order_products__prior_2
    FOREIGN KEY (order_id)
    REFERENCES orders (order_id)
    ON DELETE RESTRICT;

ALTER TABLE order_products__train ADD CONSTRAINT FK_order_products__train_1
    FOREIGN KEY (product_id)
    REFERENCES products (product_id)
    ON DELETE RESTRICT;

ALTER TABLE order_products__train ADD CONSTRAINT FK_order_products__train_2
    FOREIGN KEY (order_id)
    REFERENCES orders (order_id)
    ON DELETE RESTRICT;

