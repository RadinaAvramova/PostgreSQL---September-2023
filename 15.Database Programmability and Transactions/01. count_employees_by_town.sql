CREATE FUNCTION fn_count_employees_by_town(town_name VARCHAR)
RETURNS INT AS
$$
BEGIN
	RETURN (
		SELECT 
			count(*)
		FROM 
		employees AS e
		JOIN addresses AS a
		USING(address_id)
			JOIN towns AS t
			USING(town_id)
			WHERE t.name = town_name
	);
END
$$
LANGUAGE plpgsql;