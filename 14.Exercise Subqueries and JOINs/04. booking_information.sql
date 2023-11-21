SELECT 
	bo.booking_id,
	ap.name AS apartment_owner,
	ap.apartment_id,
	CONCAT(cu.first_name, ' ', cu.last_name)AS customer_name
FROM
	bookings AS bo
	FULL JOIN apartments AS ap ON ap.booking_id = bo.booking_id
	FULL JOIN customers AS cu ON cu.customer_id = bo.customer_id 
	ORDER BY
    bo.booking_id, apartment_owner, customer_name;