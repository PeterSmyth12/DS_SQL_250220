SELECT *
FROM Farms;


SELECT Country, A06_province, A07_district, A08_ward, A09_village
FROM Farms;

SELECT A*
FROM Farms;

SELECT *
FROM Farms
LIMIT 10;

SELECT  Id, B16_years_liv
FROM Farms
WHERE B16_years_liv > 25
;

SELECT  Id, B17_parents_liv
FROM Farms
WHERE B17_parents_liv = 'yes'
;

SELECT  Id
FROM Farms
WHERE    B17_parents_liv = 'yes' 
     AND B18_sp_parents_liv = 'yes' 
     AND B19_grand_liv = 'yes' 
     AND B20_sp_grand_liv = 'yes' 
;

SELECT  Id
FROM Farms
WHERE (B17_parents_liv = 'yes' OR B18_sp_parents_liv = 'yes') AND B16_years_liv > 60
;

SELECT Id, B16_years_liv
FROM Farms
WHERE B16_years_liv > 50 AND B16_years_liv < 60
;

SELECT Id, B16_years_liv
FROM Farms
WHERE B16_years_liv BETWEEN 51 AND 59
;

SELECT Id, B16_years_liv
FROM Farms
WHERE B16_years_liv IN (51, 52, 53, 54, 55, 56, 57, 58, 59)
;

SELECT Id, A09_village, A11_years_farm, B16_years_liv
FROM Farms
WHERE A09_village = 'God'
ORDER BY A11_years_farm
;

SELECT Id, A09_village, A11_years_farm, B16_years_liv
FROM Farms
WHERE A09_village = 'God'
ORDER BY A11_years_farm DESC
;

SELECT Id, A09_village, A11_years_farm, B16_years_liv
FROM Farms
WHERE A09_village = 'God'
ORDER BY A11_years_farm DESC , B16_years_liv ASC
;

