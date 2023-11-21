SELECT 
    t.town_id,
	t.name,
	a.address_text
FROM 
    towns AS t
    JOIN addresses AS a
    ON t.town_id = a.town_id
WHERE t.name IN ('San Francisco','Sofia','Carnation')
ORDER BY town_id, a.address_id;

-- Other Way with USING

SELECT 
    t.town_id,
	t.name,
	a.address_text
FROM 
    towns AS t
    JOIN addresses AS a
    USING(town_id)
WHERE t.name IN ('San Francisco','Sofia','Carnation')
ORDER BY town_id, a.address_id;

