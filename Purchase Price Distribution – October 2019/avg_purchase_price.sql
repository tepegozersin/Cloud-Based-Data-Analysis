SELECT 
  AVG(price) AS avg_purchase_price,
  MIN(price) AS min_price,
  MAX(price) AS max_price
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`
WHERE event_type = 'purchase';
