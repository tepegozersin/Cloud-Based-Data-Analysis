SELECT
  EXTRACT(HOUR FROM event_time) AS purchase_hour,
  COUNT(*) AS purchase_count,
  ROUND(SUM(price), 2) AS total_revenue,
  ROUND(AVG(price), 2) AS avg_purchase_price
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase'
GROUP BY purchase_hour
ORDER BY purchase_hour;
