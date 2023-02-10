USE InstacartMarketBasket;

-- Apagando todas Tabelas
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS aisles;
DROP TABLE IF EXISTS order_products__prior;
DROP TABLE IF EXISTS order_products__train;

-- delete database
DROP DATABASE IF EXISTS InstacartMarketBasket;
