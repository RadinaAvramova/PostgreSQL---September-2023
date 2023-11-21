SELECT
	ap.country,
	COUNT(bo.booking_id) AS booking_count
FROM
	bookings AS bo
JOIN
	apartments AS ap
USING
	(apartment_id)
WHERE
	bo.booked_at > '2021-05-18 07:52:09.904+03'
	AND bo.booked_at < '2021-09-17 19:48:02.147+03'
GROUP BY ap.country
ORDER BY booking_count DESC;
