SELECT 
  user_id,
  COUNT(*) AS total_purchases,
  MIN(DATE(TIMESTAMP(event_time))) AS first_purchase_date,
  MAX(DATE(TIMESTAMP(event_time))) AS last_purchase_date,
  DATE_DIFF(MAX(DATE(TIMESTAMP(event_time))), MIN(DATE(TIMESTAMP(event_time))), DAY) AS active_days,
  ROUND(COUNT(*) / NULLIF(DATE_DIFF(MAX(DATE(TIMESTAMP(event_time))), MIN(DATE(TIMESTAMP(event_time))), DAY), 0), 2) AS avg_purchases_per_day,
  SUM(price) AS total_spent
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase'
GROUP BY user_id
ORDER BY total_purchases DESC
LIMIT 100;
