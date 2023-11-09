SELECT * FROM payments_method;

SET @delete_id = 8;

DELETE FROM payments_method WHERE id = @delete_id;