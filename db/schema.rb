# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131212030817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "geography"
    t.integer  "total_pop_2005"
    t.integer  "age_under_19_year_2005"
    t.integer  "over_65_year_2005"
    t.decimal  "per_capita_income_2000"
    t.integer  "persons_below_200percent_poverty_yr_2000"
    t.decimal  "percent_persons_below_200percent_poverty_yr_2000"
    t.decimal  "percent_adequacy_prenatal_care"
    t.decimal  "percent_csection_deliveries_2005_to_2008"
    t.integer  "number_infant_deaths_2005_to_2008"
    t.integer  "infant_mortality_rate_2005_2008"
    t.decimal  "percent_low_birthweight_2005_2008"
    t.decimal  "percent_multiple_births_2005_2008"
    t.decimal  "percent_publicly_financed_prenatal_care_2005_2008"
    t.decimal  "percent_teen_births_2005_2008"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
