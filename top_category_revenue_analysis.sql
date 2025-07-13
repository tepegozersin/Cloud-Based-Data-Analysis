SELECT
  category_code,
  SUM(price) AS total_revenue,
  COUNT(*) AS purchase_count,
  ROUND(SUM(price) / COUNT(*), 2) AS avg_price
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase' AND category_code IS NOT NULL
GROUP BY category_code
ORDER BY total_revenue DESC
LIMIT 10;
