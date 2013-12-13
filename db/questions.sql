--What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography FROM town_health_records ORDER BY over_65_year_2005 DESC LIMIT 3;
--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography FROM town_health_records ORDER BY age_under_19_year_2005 DESC LIMIT 3;
--What 5 towns have the lowest per capita income?
SELECT geography FROM town_health_records ORDER BY per_capita_income_2000 LIMIT 5;
--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography FROM town_health_records WHERE percent_teen_births_2005_2008 IS NOT NULL AND (geography != 'Boston' AND geography != 'Beckett' AND geography != 'Beverly') ORDER BY percent_teen_births_2005_2008 DESC LIMIT 1;
--Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography FROM town_health_records WHERE number_infant_deaths_2005_to_2008 IS NOT NULL AND geography != 'Boston' ORDER BY number_infant_deaths_2005_to_2008 DESC LIMIT 1;
