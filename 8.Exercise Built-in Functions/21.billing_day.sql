ALTER TABLE
	bookings
ADD COLUMN 
		bolling_day TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP;
SELECT 
	TO_CHAR(bolling_day,'DD "Day" MM "Month" YYYY "Year" HH24:MI:SS') AS "Billing Day"
FROM 
	bookings;