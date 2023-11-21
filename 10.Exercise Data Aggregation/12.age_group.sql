SELECT 
	CASE 
	WHEN age > 60 THEN '[61+]'
	WHEN age > 50 THEN '[51 - 60]'
	WHEN age > 40 THEN '[41 - 50]'
	WHEN age > 30 THEN '[31 - 40]'
	WHEN age > 20 THEN '[21 - 30]'
	WHEN age > 10 THEN '[11 - 20]'
	END AS age_group
	,COUNT(age) AS count
FROM 
	wizard_deposits
GROUP BY 
	age_group
ORDER BY age_group ASC;