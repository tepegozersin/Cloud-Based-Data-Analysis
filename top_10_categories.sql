SELECT 
  category_code,
  COUNT(*) AS total_purchases
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase' AND category_code IS NOT NULL
GROUP BY category_code
ORDER BY total_purchases DESC
LIMIT 10;
