DELIMITER //
CREATE PROCEDURE `get_user_products` (
	in catalog_name VARCHAR(110)
)
  BEGIN
	DECLARE user_id VARCHAR(110);

  SELECT `id` INTO user_id FROM `users` WHERE `users`.`catalog_name` = catalog_name;

  SELECT `id`, `name`, `description`, `price`, `image`, `inventory_quantity`
  FROM `products`
  WHERE `products`.`user_id` = user_id ;

  END // DELIMITER ;