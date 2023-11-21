SELECT 
	bo.booking_id,
	bo.apartment_id,
	cu.companion_full_name
FROM
	bookings AS bo
	JOIN customers AS cu USING(customer_id)
	WHERE bo.apartment_id IS NULL;