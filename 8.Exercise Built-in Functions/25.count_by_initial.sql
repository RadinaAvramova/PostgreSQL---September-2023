SELECT 
	LEFT(first_name,2) AS initials,
	COUNT('initials') AS user_count
FROM
	users
GROUP By 
	initials
ORDER By 
	user_count DESC,
	initials ASC;
