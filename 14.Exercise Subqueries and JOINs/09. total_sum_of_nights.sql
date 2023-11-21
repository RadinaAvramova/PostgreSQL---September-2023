SELECT
	ap.name,
	SUM(bo.booked_for)
FROM
	bookings AS bo
	JOIN apartments AS ap USING(apartment_id)
GROUP BY ap.name
ORDER BY ap.name ASC;