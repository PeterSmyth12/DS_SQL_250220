-- how many crops of Maize?
select * 
from Crops
where D_curr_crop = 'maize'
;

-- Which farms have more than 12 in the Household
select Id, B_no_membrs 
from Farms
where B_no_membrs > 12
;

select a.Id, a.B_no_membrs,
       b.Id, b.D_curr_crop
from Farms as a
join Crops as b
on a.Id = b.Id and a.B_no_membrs > 12 and b.D_curr_crop = 'maize'
;

select a.Id as Farms_Id, a.B_no_membrs,
       b.Id as Crops_Id, b.D_curr_crop
from Farms as a
left outer join Crops_rice as b
on a.Id = b.Id 
;

select a.Id as Farms_Id, a.B_no_membrs,
       b.Id , b.plot_id as plot_id, b.D02_total_plot,
       c.Id as Crops_Id, c.plot_Id as crops_plot_id, c.D_curr_crop
from Farms as a
join Plots as b
join Crops  as c
on a.Id = b.Id and ( b.Id = c.Id and b.plot_id = c.plot_id) and a.B_no_membrs > 12 and c.D_curr_crop = 'maize'
;

