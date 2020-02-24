-- Aggregations

select 
       min(A11_years_farm),
       max(A11_years_farm),
       avg(A11_years_farm)
from Farms;

select distinct A06_province
from Farms;

select distinct A09_village
from Farms;

select A08_ward,
       count(*) as How_many
from Farms
group by A08_ward;

select A06_province, 
       A07_district,
       A08_ward,
       A09_village,
       count(*) as How_many
from Farms
Group By A06_province, A07_district, A08_ward, A09_village
;

select A08_ward,
       min(A11_years_farm) as min_years,
       max(A11_years_farm) as max_years,
       count(*) as how_many_farms
from Farms
group by A08_ward
having how_many_farms > 2;

