SET @update_id = 8;
SET @update_payment_method = 'Apa sok';

UPDATE payments_method
SET
payment_method = @update_payment_method
WHERE id=@update_id;