class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_pop_2005
      t.integer :age_under_19_year_2005
      t.integer :over_65_year_2005
      t.decimal :per_capita_income_2000
      t.integer :persons_below_200percent_poverty_yr_2000
      t.decimal :percent_persons_below_200percent_poverty_yr_2000
      t.decimal :percent_adequacy_prenatal_care
      t.decimal :percent_csection_deliveries_2005_to_2008
      t.integer :number_infant_deaths_2005_to_2008
      t.integer :infant_mortality_rate_2005_2008
      t.decimal :percent_low_birthweight_2005_2008
      t.decimal :percent_multiple_births_2005_2008
      t.decimal :percent_publicly_financed_prenatal_care_2005_2008
      t.decimal :percent_teen_births_2005_2008

      t.timestamps
    end
  end
end

