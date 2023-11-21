SELECT 
	id,
	(side * height / 2) AS "Area"
FROM 
	triangles
ORDER BY id;