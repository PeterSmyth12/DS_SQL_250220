SELECT Id, 
       Country, 
       A06_province, 
       A07_district,
       A08_ward, 
       A09_village
FROM Farms;

CREATE TABLE Farms_location AS
SELECT Id, 
       Country, 
       A06_province, 
       A07_district,
       A08_ward, 
       A09_village
FROM Farms;

CREATE TABLE crops_rice AS
SELECT *
FROM Crops
WHERE D_curr_crop = 'rice'
;

CREATE VIEW Farms_location AS
SELECT Id, 
       Country, 
       A06_province, 
       A07_district,
       A08_ward, 
       A09_village
FROM Farms;