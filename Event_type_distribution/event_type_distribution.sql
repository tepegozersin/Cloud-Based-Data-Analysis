SELECT 
  event_type,
  COUNT(*) AS total_events
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
GROUP BY event_type
ORDER BY total_events DESC;
