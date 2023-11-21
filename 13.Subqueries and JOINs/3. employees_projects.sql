SELECT 
    e.employee_id,
	CONCAT(e.first_name, ' ', e.last_name) AS full_name,
	project_id,
	p.name
FROM 
    employees AS e
    JOIN employees_projects AS ep
    ON e.employee_id = ep.employee_id 
		JOIN projects AS p 
		USING(project_id)
WHERE project_id = 1;