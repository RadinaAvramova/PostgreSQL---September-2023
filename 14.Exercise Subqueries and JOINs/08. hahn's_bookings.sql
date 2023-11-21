SELECT
	COUNT(bo.booking_id)
FROM
	bookings AS bo
	JOIN customers AS cu USING(customer_id)
	WHERE cu.last_name = 'Hahn';