SELECT 
	mo.mountain_range,
	pe.peak_name,
	pe.elevation
FROM 
	mountains AS mo
JOIN
	peaks AS pe
ON
    mo.id = pe.mountain_id
WHERE
		mo.mountain_range = 'Rila'
ORDER BY
    pe.elevation
DESC;
