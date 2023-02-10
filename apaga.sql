-- ------------------------------   << InstacartMarketBasket (Trabalho Final)  >>   ------------------------------
--
--                                                SCRIPT DE APAGAR (DDL)                                                
-- 
-- Data Criação ...........: 10/02/2023
-- Autor(es) ..............: Victor, Deivid, Paulo
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: InstacartMarketBasket
-- 
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--         => 01 Usuários
-- 
-- ------------------------------------------------------------------------------------------------------------------------

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
