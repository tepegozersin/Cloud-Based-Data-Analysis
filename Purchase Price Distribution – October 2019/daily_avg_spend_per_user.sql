SELECT
  DATE(event_time) AS date,
  COUNT(DISTINCT user_id) AS unique_buyers,
  ROUND(SUM(price), 2) AS total_revenue,
  ROUND(SUM(price) / COUNT(DISTINCT user_id), 2) AS avg_spend_per_user
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase'
GROUP BY date
ORDER BY date;
