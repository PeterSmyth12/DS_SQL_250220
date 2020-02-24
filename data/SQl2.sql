SELECT *
FROM Farms
WHERE F14_items_owned IS NULL
;

SELECT E01_water_use, E_no_group_count, E_yes_group_count
FROM Farms
;

UPDATE Farms
SET F14_items_owned = '[]'
WHERE F14_items_owned is NULL 
;

SELECT * from Farms
WHERE F14_items_owned IS NOT NULL
;