select * from Test_Data.dbo.Sheet1$ ;


--Query 1


select [Model Name], Brand, Source, Country, 
sum(case when [Feature 1] = -1 then 1 else 0 end) as 'Feature 1_Negative_Total',
sum(case when [Feature 1] = 0 then 1 else 0 end) as 'Feature 1_Neutral_Total' ,
sum(case when [Feature 1] = 1 then 1 else 0 end) as 'Feature 1_Positive_Total',
sum(case when [Feature 2] = -1 then 1 else 0 end) as 'Feature 2_Negative_Total' ,
sum(case when [Feature 2] = 0 then 1 else 0 end) as 'Feature 2_Neutral_Total' ,
sum(case when [Feature 2] = 1 then 1 else 0 end) as 'Feature 2_Positive_Total',
sum(case when [Feature 3] = -1 then 1 else 0 end) as 'Feature 3_Negative_Total' ,
sum(case when [Feature 3] = 0 then 1 else 0 end) as 'Feature 3_Neutral_Total' ,
sum(case when [Feature 3] = 1 then 1 else 0 end) as 'Feature 3_Positive_Total',
sum(case when [Feature 4] = -1 then 1 else 0 end) as 'Feature 4_Negative_Total' ,
sum(case when [Feature 4] = 0 then 1 else 0 end) as 'Feature 4_Neutral_Total' ,
sum(case when [Feature 4] = 1 then 1 else 0 end) as 'Feature 4_Positive_Total'
from Test_Data.dbo.sheet1$
group by [Model Name], Brand, Source, Country;

-----------------------------------------------------------------------------------------------------------------
--Query -- 2


Select t.* from (
select [Model Name], Brand, Source, Country, 'Feature 1' as Topic ,
sum(case when [Feature 1] = -1 then 1 else 0 end) as 'Negative',
sum(case when [Feature 1] = 0 then 1 else 0 end) as 'Netural',
sum(case when [Feature 1] = 1 then 1 else 0 end) as 'Positive'
from Test_Data.dbo.Sheet1$
group by
[Model Name], Brand, Source, Country

Union ALL

select [Model Name], Brand, Source, Country, 'Feature 2' as Topic ,
sum(case when [Feature 2] = -1 then 1 else 0 end) as 'Negative',
sum(case when [Feature 2] = 0 then 1 else 0 end) as 'Netural',
sum(case when [Feature 2] = 1 then 1 else 0 end) as 'Positive'
from Test_Data.dbo.Sheet1$
group by
[Model Name], Brand, Source, Country
Union ALL

select [Model Name], Brand, Source, Country, 'Feature 3' as Topic ,
sum(case when [Feature 3] = -1 then 1 else 0 end) as 'Negative',
sum(case when [Feature 3] = 0 then 1 else 0 end) as 'Netural',
sum(case when [Feature 3] = 1 then 1 else 0 end) as 'Positive'
from Test_Data.dbo.Sheet1$
group by
[Model Name], Brand, Source, Country
Union ALL

select [Model Name], Brand, Source, Country, 'Feature 4' as Topic ,
sum(case when [Feature 4] = -1 then 1 else 0 end) as 'Negative',
sum(case when [Feature 4] = 0 then 1 else 0 end) as 'Netural',
sum(case when [Feature 4] = 1 then 1 else 0 end) as 'Positive'
from Test_Data.dbo.Sheet1$
group by
[Model Name], Brand, Source, Country) t



