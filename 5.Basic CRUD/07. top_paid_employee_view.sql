CREATE VIEW select_top_paid_empl
	AS 
	SELECT * FROM employees 
	ORDER BY salary DESC
	LIMIT 1;
SELECT * FROM select_top_paid_empl;
	