SELECT D02_total_plot * 2.4701
FROM Plots
;

SELECT D02_total_plot * 2.4701 AS D02_total_plot_converted
FROM Plots
;

SELECT ROUND(D02_total_plot * 2.4701, 2) as D02_total_plot_converted
FROM Plots
;

SELECT A01_interview_date, A04_start, A05_end
FROM Farms
;

SELECT A01_interview_date
FROM Farms
ORDER BY A01_interview_date
;

SELECT A01_interview_date, 
       date(A01_interview_date) AS converted_A01,
       A04_start,
       date(A04_start) AS coverted_A04
FROM Farms
;

SELECT A01_interview_date,
       substr(A01_interview_date,7,4) as year,
       substr(A01_interview_date,4,2) as month,
       substr(A01_interview_date,1,2) as day
FROM Farms
;

SELECT A01_interview_date,
       substr(A01_interview_date,7,4) || '-' ||
       substr(A01_interview_date,4,2) || '-' ||
       substr(A01_interview_date,1,2) as converted_date
FROM Farms
;

SELECT A01_interview_date,
       date(
       substr(A01_interview_date,7,4) || '-' ||
       substr(A01_interview_date,4,2) || '-' ||
       substr(A01_interview_date,1,2)
       ) as converted_date
FROM Farms
;

SELECT A01_interview_date,
       date(
       substr(A01_interview_date,7,4) || '-' ||
       substr(A01_interview_date,4,2) || '-' ||
       substr(A01_interview_date,1,2)
       ) as converted_date
FROM Farms
ORDER BY converted_date
;

SELECT A01_interview_date,
       substr(A01_interview_date,7,4) as year,
       substr(A01_interview_date,4,2) as month,
       substr(A01_interview_date,1,2) as day
FROM Farms
;

SELECT A01_interview_date,
       substr(A01_interview_date,7,4) as year,
       substr(A01_interview_date,4,2) as month,
       substr(A01_interview_date,1,2) as day
FROM Farms
ORDER BY year, month, day
;

SELECT A01_interview_date,
       substr(A01_interview_date,7,4) as year,
       substr(A01_interview_date,4,2) as month,
       substr(A01_interview_date,1,2) as day
FROM Farms
ORDER BY year DESC, month DESC, day DESC
;

SELECT Id, country,
       CASE country
           WHEN 'Moz' THEN 'Mozambique'
           WHEN 'Taz' THEN 'Tanzania'
       ELSE 'Unknown Country'
       END AS country_fullname
FROM Farms
;

SELECT Id, A11_years_farm,
       CASE
           WHEN  A11_years_farm BETWEEN 1 AND 10 THEN '1-10'
           WHEN  A11_years_farm BETWEEN 11 AND 20 THEN '11-20'
           WHEN  A11_years_farm BETWEEN 21 AND 30 THEN '21-30'
           WHEN  A11_years_farm BETWEEN 31 AND 40 THEN '31-40'
           WHEN  A11_years_farm BETWEEN 41 AND 50 THEN '41-50'
           WHEN  A11_years_farm BETWEEN 41 AND 50 THEN '51-60'
       ELSE '> 60'       
       END AS A11_years_farm_range
FROM Farms
;

