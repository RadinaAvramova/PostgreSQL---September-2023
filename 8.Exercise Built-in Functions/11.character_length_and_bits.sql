SELECT
	CONCAT(mou.mountain_range ,' ', pea.peak_name) AS "Mountain Information",
	CHAR_LENGTH(CONCAT(mou.mountain_range ,' ', pea.peak_name)) AS "Characters Length",
	BIT_LENGTH(CONCAT(mou.mountain_range ,' ', pea.peak_name)) AS "Bits of a String"
FROM
	mountains AS mou,
	peaks AS pea
WHERE 
	mou.id = pea.mountain_id;
	