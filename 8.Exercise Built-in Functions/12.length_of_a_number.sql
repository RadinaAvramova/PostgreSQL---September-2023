SELECT 
 	population,
	LENGTH(CAST(population AS VARCHAR(12)))
FROM
	countries;