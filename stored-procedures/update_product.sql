DELIMITER //
CREATE PROCEDURE `update_product`(
  in
    product_id INT,
    product_name VARCHAR(255),
    product_description VARCHAR(255),
    product_price INT,
    product_image TEXT,
    product_inventory_quantity INT
)
  BEGIN

  UPDATE `products`
  SET
    name = product_name,
    description = product_description,
    price = product_price,
    image = product_image,
    inventory_quantity = product_inventory_quantity,
    updated_at = CURRENT_TIMESTAMP()
  WHERE `id` = product_id;

  END // DELIMITER ;