DELIMITER //
CREATE PROCEDURE `get_user_products` (
	in user_id INT
)
  BEGIN

    SELECT `id`, `name`, `description`, `price`, `image`, `inventory_quantity`
    FROM `products`
    WHERE `products`.`user_id` = user_id ;

  END // DELIMITER ;