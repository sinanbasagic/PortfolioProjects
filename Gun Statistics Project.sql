select *
from [SQL Portfolio Project]..[gun statistics]

--Top 10 countries with the highest number of civilan firearms per 100 persons

select Country, [Estimate of civilian firearms per 100 persons]
from [SQL Portfolio Project]..[gun statistics]
order by [Estimate of civilian firearms per 100 persons] DESC
Limit 10;

--Correlation between gun death rate and suicide rate by firearm

Select Country, [Gun Death Rate], [Suicide Rate by Firearm]
from [SQL Portfolio Project]..[gun statistics]
Order by [Gun Death Rate] DESC, [Suicide Rate by Firearm] DESC;

--Percentage of unregistered firearms compared to the total estimate of firearms in civilian possession

SELECT (CAST([Unregistered firearms] AS FLOAT) / [Estimate of firearms in civilian possession]) * 100 AS unregistered_firearms_percentage
from [SQL Portfolio Project]..[gun statistics]

--Percentage of police killings compared to the total number of deaths by firearm

Select Country, [Police Killings], [Deaths by firearm],
Case when [Deaths by firearm] = 0 THEN NULL
Else (CAST([Police Killings] AS FLOAT) / [Deaths by firearm]) * 100 END AS police_killings_percentage
From [SQL Portfolio Project]..[gun statistics]
Order by police_killings_percentage DESC;

--Countries with highest gun death rates, along with the number of deaths

Select Country, [Gun Death Rate], [Deaths by firearm]
from [SQL Portfolio Project]..[gun statistics]
Order by [Gun Death Rate] DESC;

--Countries with highest suicide rates by firearm, along with number of suicides

Select Country, [Suicide Rate by Firearm], [Deaths by firearm]
from [SQL Portfolio Project]..[gun statistics]
Order by [Suicide Rate by Firearm] DESC;
