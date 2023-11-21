SELECT 
	v.driver_id,
	v.vehicle_type,
	concat(c.first_name, ' ', c.last_name)
FROM 
	vehicles AS v JOIN
	campers AS c ON
	v.driver_id = c.id;