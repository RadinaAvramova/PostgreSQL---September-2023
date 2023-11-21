CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(id INT) AS 
$$
BEGIN
	IF (SELECT salary FROM employees as e WHERE e.employee_id = id) IS NULL THEN 
		ROLLBACK;
	END IF;
		UPDATE employees 
		SET salary = salary + salary * 0.05
		WHERE id = employee_id;
END;
$$
LANGUAGE plpgsql;