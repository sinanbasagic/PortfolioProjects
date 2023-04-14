Select *
from [SQL Portfolio Project]..FertilityRateGlobal

--Only the entity column from the fertility rates global table

--Select entity
--from [SQL Portfolio Project]..FertilityRateGlobal

--The entity and year columns for all rows where the entity is United States

--Select entity, YEAR
--from [SQL Portfolio Project]..FertilityRateGlobal
--where Entity = 'United States'

--The entity, year, and fertility rate columns for all rows where the fertility rate is greater than or equal to 2.5

--Select Entity, Year, [Fertility rate - Sex: all - Age: all - Variant: estimates]
--from [SQL Portfolio Project]..FertilityRateGlobal
--Where [Fertility rate - Sex: all - Age: all - Variant: estimates] >= 2.5

--The entity and year columns for all rows where the year is between 2010 and 2020, ordered descending

--Select Entity, Year
--from [SQL Portfolio Project]..FertilityRateGlobal
--where Year between 2010 AND 2020
--order by Year DESC

--The entity, year, and fertility rate columns for all rows where the entity is either "China" or "India":

--Select Entity, Year, [Fertility rate - Sex: all - Age: all - Variant: estimates]
--from [SQL Portfolio Project]..FertilityRateGlobal
--where Entity
--in ('China', 'India')

--The entity and fertility rate columns for all rows where the fertility rate is null:

--Select Entity, [Fertility rate - Sex: all - Age: all - Variant: estimates]
--from [SQL Portfolio Project]..FertilityRateGlobal
--where [Fertility rate - Sex: all - Age: all - Variant: estimates]
--is NULL

--Count the number of unique entities in the fertility rates global table

--Select COUNT (Distinct Entity) as UniqueEntities
--from [SQL Portfolio Project]..FertilityRateGlobal