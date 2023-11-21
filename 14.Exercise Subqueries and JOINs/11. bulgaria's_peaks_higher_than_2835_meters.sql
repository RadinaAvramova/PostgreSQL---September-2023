SELECT 
    mo_co.country_code,
    mo.mountain_range,
    pe.peak_name,
    pe.elevation
FROM 
	mountains_countries AS mo_co 
JOIN 
	mountains AS mo
ON 
	mo.id = mo_co.mountain_id
JOIN
	peaks AS pe
ON 
	mo.id = pe.mountain_id
WHERE pe.elevation > 2835 AND mo_co.country_code = 'BG'
ORDER BY pe.elevation DESC;