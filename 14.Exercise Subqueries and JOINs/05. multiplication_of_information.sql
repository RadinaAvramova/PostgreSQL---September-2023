SELECT 
	bo.booking_id,
	cu.first_name AS customer_name
FROM
	bookings AS bo
	CROSS JOIN customers AS cu
	ORDER BY customer_name ASC;