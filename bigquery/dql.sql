-- Número total de pedidos por usuário:

SELECT user_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY user_id
ORDER BY total_orders DESC

-- Produtos mais comprados:

SELECT product_name, COUNT(product_id) AS total_products
FROM order_products__prior
JOIN products ON order_products_prior.product_id = products.product_id
GROUP BY product_name
ORDER BY total_products DESC

-- Dias da semana com mais pedidos:

SELECT order_dow, COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_dow
ORDER BY total_orders DESC

-- Produtos mais reordenados:

SELECT product_name, COUNT(product_id) AS total_reorders
FROM order_products__prior
