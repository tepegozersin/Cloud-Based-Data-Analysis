SELECT
  brand,
  COUNT(*) AS purchase_count,
  ROUND(SUM(price), 2) AS total_revenue,
  ROUND(AVG(price), 2) AS avg_price
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase'
  AND brand IS NOT NULL
GROUP BY brand
ORDER BY purchase_count DESC
LIMIT 10;
