SELECT 
	CONCAT(ap.address, ' ', ap.address_2) AS apartment_address,
	bo.booked_for AS nights
FROM
	apartments AS ap
	JOIN bookings AS bo
	ON ap.booking_id = bo.booking_id
ORDER BY ap.apartment_id ASC ;	