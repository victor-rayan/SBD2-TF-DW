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
  FROM `instacart_marketbasket.orders`
), 
order_products AS (
  SELECT 
    order_id, 
    product_id, 
    reordered
  FROM `instacart_marketbasket.order_products__prior`
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