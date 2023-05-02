CREATE PROCEDURE `get_products_by_user`(
  in user_id INT
)
BEGIN

SELECT id, name, description, price, image, inventory_quantity  FROM products
WHERE id = user_id;

END