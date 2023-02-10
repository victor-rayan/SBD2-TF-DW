-- Esses são exemplos de analises das tendências de compra dos usuários ao longo do tempo.

-- Análise de tendências de compra:

-- Aqui estamos analisando as tendências de compra dos
-- usuários ao longo do tempo, identificando padrões de comportamento como a frequência de compra, 
-- o horário de compra e os dias da semana mais populares para compras.

WITH customer_orders AS (
  SELECT 
    order_id, 
    customer_id, 
    DATE(order_date) AS order_date, 
    EXTRACT(HOUR FROM order_date) AS order_hour, 
    EXTRACT(DAYOFWEEK FROM order_date) AS order_weekday
  FROM `instacart_.orders`
), 
order_products AS (
  SELECT 
    order_id, 
    product_id, 
    reordered
  FROM `order_products_prior`
)

SELECT 
  order_weekday, 
  order_hour, 
  AVG(COUNT(DISTINCT order_id)) AS avg_orders_per_day
FROM customer_orders 
JOIN order_products 
ON customer_orders.order_id = order_products.order_id
GROUP BY 
  order_weekday, 
  order_hour
ORDER BY 
  order_weekday, 
  order_hour

-- Frequência de compra
-- agrupa as compras por usuário e calcula o número médio de dias entre as compras.

SELECT 
  order_dow, 
  COUNT(order_dow) AS order_count
FROM 
  instacart.orders
GROUP BY 
  order_dow
ORDER BY 
  order_count DESC

-- Horário de compra:
-- Este código agrupa as compras por horário e conta o número total de compras em cada horário.

SELECT order_hour_of_day, COUNT(order_id) as total_orders
FROM `instacart_dataset.orders`
GROUP BY order_hour_of_day
ORDER BY total_orders DESC

-------------------------------

WITH
    merged_orders AS (
        SELECT 
            o.order_id,
            o.user_id,
            o.order_number,
            o.order_dow,
            o.order_hour_of_day,
            o.days_since_prior_order,
            op.reordered
        FROM 
            instakart.orders o 
            LEFT JOIN instakart.order_products_prior op 
                ON o.order_id = op.order_id
    ),
    avg_reordered_by_group AS (
        SELECT 
            order_dow,
            order_hour_of_day,
            days_since_prior_order,
            AVG(reordered) AS avg_reordered
        FROM 
            merged_orders
        GROUP BY 
            order_dow,
            order_hour_of_day,
            days_since_prior_order
    )
SELECT 
    *
FROM 
    avg_reordered_by_group;






