UPDATE currencies
	SET description = SUBSTRING(description FROM 5) as "substring"
	RETURNING description;
	
