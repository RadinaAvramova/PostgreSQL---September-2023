SELECT 
	mo.country_code,
	COUNT(m.mountain_range) AS mountain_range_count
FROM 
	mountains_countries AS mo
JOIN
	mountains AS m
ON 
	m.id = mo.mountain_id
WHERE mo.country_code IN('BG','RU','US')
GROUP BY 
	mo.country_code
ORDER BY 
	mountain_range_count DESC;