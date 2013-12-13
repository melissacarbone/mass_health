# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

def format(data)
  data.gsub(",", "").gsub("$", "").gsub("NA", "") if data != nil
end

datafile = Rails.root + "db/data/mass_health_data.csv"

CSV.foreach(datafile, headers:true) do |row|

  unless TownHealthRecord.exists?(geography: row[0])
  TownHealthRecord.create!(geography: format(row[0]),
                          total_pop_2005: format(row[1]),
                          age_under_19_year_2005: format(row[2]),
                          over_65_year_2005: format(row[3]),
                          per_capita_income_2000: format(row[4]),
                          persons_below_200percent_poverty_yr_2000: format(row[5]),
                          percent_persons_below_200percent_poverty_yr_2000: format(row[6]),
                          percent_adequacy_prenatal_care: format(row[7]),
                          percent_csection_deliveries_2005_to_2008: format(row[8]),
                          number_infant_deaths_2005_to_2008: format(row[9]),
                          infant_mortality_rate_2005_2008: format(row[10]),
                          percent_low_birthweight_2005_2008: format(row[11]),
                          percent_multiple_births_2005_2008: format(row[12]),
                          percent_publicly_financed_prenatal_care_2005_2008: format(row[13]),
                          percent_teen_births_2005_2008: format(row[14]))


  end

end
