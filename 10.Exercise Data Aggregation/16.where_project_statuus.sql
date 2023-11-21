SELECT 
	project_name,
	CASE
		WHEN start_date IS NULL AND end_date IS NULL THEN 'Ready for development'
		WHEN start_date IS NOT NULL AND end_date IS NULL THEN 'In Progress'
		WHEN start_date IS NOT NULL AND end_date IS NOT NULL THEN 'Done'
	END AS project_status
FROM
	projects
WHERE project_name LIKE '%Mountain%';
