SELECT 
  user_id,
  COUNT(*) AS total_purchases,
  SUM(price) AS total_spent
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase'
GROUP BY user_id
ORDER BY total_purchases DESC
LIMIT 100;
