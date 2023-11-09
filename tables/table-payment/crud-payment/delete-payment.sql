SELECT * FROM payment;

SET @delete_id = 1;

DELETE FROM payment WHERE id = @delete_id;