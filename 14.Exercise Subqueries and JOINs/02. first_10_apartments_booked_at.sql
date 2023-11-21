SELECT 
	ap.name,
	ap.country,
	DATE(bo.booked_at) 
FROM
	apartments AS ap
	LEFT JOIN bookings AS bo
	ON ap.booking_id = bo.booking_id
ORDER BY ap.apartment_id ASC LIMIT 10;