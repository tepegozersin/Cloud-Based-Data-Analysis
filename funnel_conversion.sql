SELECT 
  COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) AS viewers,
  COUNT(DISTINCT CASE WHEN event_type = 'cart' THEN user_id END) AS added_to_cart,
  COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchasers
FROM `ecommerce-project-465310.ecommerce_dataset.ecommerce_data_oct_2019`;
