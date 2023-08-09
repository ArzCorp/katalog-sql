DELIMITER //

CREATE PROCEDURE `get_catalog_color_by_user`(
  IN `user_id` INT UNSIGNED
)

BEGIN

  SELECT `catalog_color` FROM `users`
  WHERE `id` = `user_id`;

END // DELIMITER ;