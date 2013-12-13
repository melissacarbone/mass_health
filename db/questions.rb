#What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order(over_65_year_2005: :DESC).limit(3)
#What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order(age_under_19_year_2005: :DESC).limit(3)
#What 5 towns have the lowest per capita income?
TownHealthRecord.order('per_capita_income_2000').limit(5)
#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.where("percent_teen_births_2005_2008 IS NOT NULL AND geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly'").order(percent_teen_births_2005_2008: :desc).first
#Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.where("number_infant_deaths_2005_to_2008 IS NOT NULL AND geography != 'Boston'").order(number_infant_deaths_2005_to_2008: :desc).first
