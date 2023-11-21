SELECT 
	bo.booking_id,
	DATE(bo.starts_at) AS starts_at,
	bo.apartment_id,
	CONCAT(cu.first_name, ' ', cu.last_name)AS customer_name
FROM
	bookings AS bo
	RIGHT JOIN customers AS cu
	ON cu.customer_id = bo.customer_id
	ORDER BY customer_name ASC LIMIT 10;