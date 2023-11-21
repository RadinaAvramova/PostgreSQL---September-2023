SELECT
	bo.apartment_id,
	bo.booked_for,
	cu.first_name,
	cu.country
FROM
	bookings AS bo
	JOIN customers AS cu USING(customer_id)
	WHERE cu.job_type LIKE '%Lead%';