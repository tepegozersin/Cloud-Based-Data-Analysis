SELECT 
  DATE(TIMESTAMP(event_time)) AS date,
  COUNT(*) AS purchase_count
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase'
GROUP BY date
ORDER BY date;
