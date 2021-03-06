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

ActiveRecord::Schema.define(version: 2019_01_04_170713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "ahoy_events", id: :serial, force: :cascade do |t|
    t.integer "visit_id"
    t.integer "user_id"
    t.string "name"
    t.jsonb "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["user_id", "name"], name: "index_ahoy_events_on_user_id_and_name"
    t.index ["visit_id", "name"], name: "index_ahoy_events_on_visit_id_and_name"
  end

  create_table "assessments", id: :serial, force: :cascade do |t|
    t.integer "self_sufficency_goal"
    t.text "self_sufficiency_goal_other"
    t.integer "still_resident_of_neighborhood_years"
    t.integer "still_resident_of_neighborhood_months"
    t.integer "currently_employed"
    t.integer "employment_type"
    t.string "employer"
    t.string "position"
    t.float "hours_worked_per_week"
    t.decimal "monthly_wage"
    t.boolean "if_unemployed_eligible_to_work"
    t.integer "number_of_jobs_in_last_six_months"
    t.boolean "filed_1040_in_last_year"
    t.decimal "last_calendar_years_income"
    t.boolean "currently_receive_earned_income_tax_credit"
    t.decimal "earned_income_tax_credit_amount"
    t.integer "child_support"
    t.integer "currently_registered_to_vote"
    t.string "vote_local"
    t.string "boolean"
    t.string "vote_state"
    t.string "vote_federal"
    t.integer "vote_frequency"
    t.boolean "educational_training_last_six_months"
    t.boolean "education_currently_enrolled"
    t.string "education_institution_name"
    t.string "education_studying"
    t.integer "education_program_length_in_months"
    t.integer "education_progress"
    t.string "education_degree_type"
    t.boolean "medical_high_blood_sugar"
    t.boolean "medical_diabetes"
    t.string "medical_diabetes_type"
    t.boolean "medical_pulmonary_disease"
    t.boolean "medical_elevated_blood_pressure"
    t.string "medical_elevated_blood_pressure_gestational"
    t.boolean "medical_mental_health_diagnosis"
    t.boolean "medical_tobacco_products"
    t.boolean "medical_alcohol"
    t.integer "medical_alcohol_avg_drinks_per_week"
    t.integer "medical_height"
    t.integer "medical_weight"
    t.integer "medical_physical_family_member_impact"
    t.integer "ssa_health_insurance"
    t.integer "ssa_health_insurance_primary"
    t.integer "ssa_health_insurance_children"
    t.integer "health_insurance_spouse_or_significant_other"
    t.integer "primary_care_physician_primary"
    t.integer "primary_care_physician_children"
    t.integer "primary_care_physician_spouse_or_significant_other"
    t.integer "medical_treatment_location"
    t.integer "current_health"
    t.integer "happiness_level"
    t.boolean "ever_been_to_jail"
    t.boolean "in_need_of_current_criminal_resolution"
    t.boolean "household_member_in_jail"
    t.boolean "household_member_in_jail_current_criminal_resoution_need"
    t.boolean "adult_household_member_gone_to_jail"
    t.boolean "adult_criminal_resolution_needed"
    t.boolean "other_legal_matters_need_resolved"
    t.boolean "cocaine_crack_speed"
    t.boolean "meth"
    t.boolean "marijuana"
    t.boolean "heroin_opiates"
    t.string "other_boolean"
    t.date "drug_date_of_last_use"
    t.boolean "written_plan_to_become_self_sufficient"
    t.boolean "current_budget_and_savings_plan"
    t.boolean "safe_and_stable_place_to_live"
    t.boolean "people_in_my_life_i_can_trust_for_support"
    t.boolean "people_in_my_life_serving_as_mentors"
    t.integer "number_of_people_trusted_for_emotional_or_moral_support"
    t.integer "number_of_people_trusted_for_mentorship"
    t.integer "most_people_can_be_trusted"
    t.integer "i_trust_people_in_my_neighborhood"
    t.integer "i_trust_police_in_my_community"
    t.integer "i_trust_local_govt"
    t.integer "last_six_months_worked_on_neighborhood_project"
    t.integer "last_six_months_worked_with_neighborhood_partners"
    t.integer "last_six_months_volunteered"
    t.integer "last_six_months_attended_public_meetings_for_neighborhood"
    t.integer "last_six_months_attended_public_meetings_for_schools"
    t.integer "last_six_months_attended_politial_rally"
    t.integer "last_six_months_been_at_friends_home"
    t.integer "last_six_months_had_friend_of_different_race_in_home"
    t.integer "last_six_months_been_in_home_of_friend_of_different_race"
    t.integer "last_six_months_been_in_home_of_someone_from_different_neighbor"
    t.integer "last_six_months_had_friend_from_different_neighborhood_in_my_ho"
    t.integer "last_six_months_donated_food_or_other_goods"
    t.integer "last_six_months_opened_or_added_money_to_savings_account"
    t.integer "last_six_months_paid_off_credit_card_bill_or_title_loan"
    t.integer "last_six_months_obtained_a_better_paying_job"
    t.integer "last_six_months_obtained_a_car"
    t.integer "last_six_months_received_food_clothing_or_other_donated_goods"
    t.boolean "examined_credit_score_in_last_six_months"
    t.integer "credit_score"
    t.boolean "belong_to_neighborhood_association"
    t.string "neighborhood_association_name"
    t.boolean "currently_serve_as_officer_or_on_committee"
    t.string "officer_or_committee_organization_name"
    t.integer "how_often_do_you_talk_to_immediate_neighbors"
    t.integer "neighborhood_safe_place_to_live_rating"
    t.integer "my_impact_on_neighborhood_safety"
    t.integer "people_running_my_community_care_about_me"
    t.string "religious_or_spiritual_preference"
    t.string "name_of_place_of_worship"
    t.integer "how_often_attend_religious_services"
    t.integer "ssa_primary_adult_enrolled_best_description_academic"
    t.integer "ssa_family_best_description_current_situation_income"
    t.integer "ssa_primary_adult_enrolled_best_description_employment"
    t.integer "family_best_description_current_situation_food"
    t.integer "ssa_family_best_description_current_situation_housing"
    t.integer "ssa_family_best_description_current_situation_transportation"
    t.boolean "currently_have_required_auto_insurance"
    t.boolean "currently_have_valid_drivers_license"
    t.integer "no_license_reason"
    t.boolean "part_of_matched_circle"
    t.integer "number_of_circle_allies"
    t.boolean "attended_at_least_two_weekly_meetings_each_of_last_six_months"
    t.boolean "worked_with_ally_in_last_six_months"
    t.text "economic_stability_goals_for_next_six_months"
    t.text "goals_accomplished_in_previous_six_months"
    t.integer "ssa_family_best_description_current_situation_mental_health"
    t.integer "ssa_primary_adult_enrolled_best_description_stressors"
    t.boolean "completed_parenting_program_in_last_three_years"
    t.string "parenting_program_name"
    t.boolean "children_currently_in_accredited_child_care_after_school_care"
    t.decimal "all_sources_of_earned_income_last_30_days"
    t.decimal "child_support_received_last_30_days"
    t.decimal "social_security_last_30_days"
    t.decimal "military_or_va_pension_last_30_days"
    t.decimal "other_last_30_days"
    t.decimal "food_stamps_last_30_days"
    t.decimal "public_assistance_last_30_days"
    t.decimal "unemployment_benefits_last_30_days"
    t.decimal "other_public_benefits_last_30_days"
    t.decimal "pell_grant_monthly_amount"
    t.decimal "student_loan_as_income_monthly_amount"
    t.decimal "military_veterans_education_as_income_monthly_amount"
    t.decimal "daycare_monthly_amount"
    t.decimal "transportation_monthly_amount"
    t.decimal "other_monthly_amount"
    t.decimal "checking_account_balance"
    t.decimal "savings_account_balance"
    t.decimal "ida_account_balance"
    t.decimal "other_investments_balance"
    t.decimal "expenses_rent_mortgage"
    t.decimal "expenses_rent_to_own"
    t.decimal "expenses_city_utilities"
    t.decimal "expenses_cable"
    t.decimal "expenses_phone"
    t.decimal "expenses_internet"
    t.decimal "expenses_prescriptions"
    t.decimal "expenses_food"
    t.decimal "expenses_car_payments"
    t.decimal "expenses_transportation"
    t.decimal "expenses_personal_expenses"
    t.decimal "expenses_entertainment"
    t.decimal "expenses_medical_insurance"
    t.decimal "expenses_tobacco"
    t.decimal "expenses_alcohol"
    t.decimal "expenses_child_support"
    t.decimal "debt_credit_card"
    t.decimal "debt_medical_bills"
    t.decimal "debt_student_loans"
    t.decimal "debt_personal_loans"
    t.decimal "debt_payday_loans"
    t.decimal "debt_car_loans"
    t.decimal "debt_legal_judgement"
    t.decimal "debt_other"
    t.integer "individual_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ssa_health_insurance_primary_other"
    t.string "ssa_health_insurance_children_other"
    t.string "health_insurance_spouse_or_significant_other_other"
    t.date "drug_date_of_last_use_ccs"
    t.date "drug_date_of_last_use_meth"
    t.date "drug_date_of_last_use_marijuana"
    t.date "drug_date_of_last_use_heroin"
    t.date "drug_date_of_last_use_other"
    t.integer "last_six_months_had_friends_in_home"
    t.boolean "member_of_religious_group"
    t.boolean "convicted_of_crime_last_six_months"
    t.integer "number_of_people_help_financially"
    t.integer "highest_education_attained"
    t.string "last_grade_completed"
    t.string "technical_training_degree"
    t.string "associates_degree_type"
    t.string "bachelors_degree_type"
    t.string "masters_degree_type"
    t.integer "marital_status"
    t.date "date_collected"
    t.integer "ssa_primary_adult_enrolled_parenting"
    t.integer "SS_quality_childcare"
    t.integer "ss_criminal"
    t.float "how_many_allies"
    t.boolean "attended_at_least_two_meetings_in_last_six_months"
    t.boolean "have_you_recently_worked_with_an_ally"
    t.integer "ss_non_criminal"
    t.integer "ss_support_system"
    t.integer "ss_food"
    t.integer "ss_home_safety"
    t.integer "ss_community_involvement"
    t.integer "ssa_highest_grade_completed"
    t.string "ssa_title_of_training"
    t.string "ssa_title_of_degree"
    t.integer "ssa_community_involvement"
    t.string "ssa_health_insurance_type"
    t.integer "ssa_medical_physical_family_member_impact"
    t.integer "ssa_criminal"
    t.integer "ssa_legal_non_criminal"
    t.integer "ssa_support_system"
    t.integer "ssa_food"
    t.integer "ssa_home_safety"
    t.integer "ssa_quality_childcare"
    t.string "voter"
    t.index ["individual_id"], name: "index_assessments_on_individual_id"
  end

  create_table "attendances", id: :serial, force: :cascade do |t|
    t.integer "individual_id"
    t.integer "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "present"
    t.index ["individual_id"], name: "index_attendances_on_individual_id"
    t.index ["meeting_id"], name: "index_attendances_on_meeting_id"
  end

  create_table "cohorts", id: :serial, force: :cascade do |t|
    t.date "start_date"
    t.string "meeting_night"
    t.string "meeting_time"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_cohorts_on_organization_id"
  end

  create_table "families", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "neighborhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", id: :serial, force: :cascade do |t|
    t.integer "individual_id"
    t.text "goal"
    t.date "goal_start"
    t.date "goal_finish"
    t.float "completion_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["individual_id"], name: "index_goals_on_individual_id"
  end

  create_table "household_members", id: :serial, force: :cascade do |t|
    t.integer "individual_id"
    t.string "name"
    t.string "relationship"
    t.float "age"
    t.string "school"
    t.string "care_provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["individual_id"], name: "index_household_members_on_individual_id"
  end

  create_table "individuals", id: :serial, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone_number"
    t.string "mobile_phone_number"
    t.string "email_address"
    t.string "preferred_method_of_contact"
    t.date "DOB"
    t.date "start_date"
    t.boolean "us_citizen"
    t.string "non_us_citizen_country_of_citizenship"
    t.integer "ethnicity"
    t.string "ethnicity_other"
    t.string "lanuage_primary"
    t.string "language_other"
    t.boolean "springfield_native"
    t.string "springfield_native_neighborhood"
    t.integer "springfield_non_native_population"
    t.integer "neighborhood_resident_length_in_months"
    t.integer "springfield_non_native_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cohort_id"
    t.integer "childhood_raisedby_other_than_parents"
    t.integer "childhood_raisedby_other_than_parents_length_in_months"
    t.integer "childhood_raisedby_other_than_parents_by_who"
    t.integer "childhood_residence_away_from_family"
    t.integer "childhood_residence_away_from_family_length_in_months"
    t.integer "ACE_swore_at_or_put_down"
    t.integer "childhood_made_to_feel_afraid_of_injury"
    t.integer "ACE_pushed_shoved_grabbed_slapped"
    t.integer "childhood_hit_hard"
    t.integer "childhood_lived_with_alcoholic"
    t.integer "childhood_lived_with_drug_user"
    t.integer "childhood_lived_with_depressed_or_mentally_ill"
    t.integer "childhood_lived_with_member_who_attempted_suicide"
    t.integer "childhood_lived_with_member_went_to_jail"
    t.string "childhood_jailed_family_member_which"
    t.integer "childhood_caregiver_was_pushed_shoved_grabbed_slapped"
    t.integer "childhood_caregiver_bitten_or_hit"
    t.integer "childhood_caregiver_hit_repeatedly"
    t.integer "organization_id"
    t.date "date_of_application"
    t.string "alternate_phone"
    t.boolean "willing_and_able_to_commit_to_program"
    t.integer "specific_days_that_do_not_work"
    t.text "days_and_times_not_available"
    t.integer "currently_employed"
    t.integer "employed_full_or_part_time"
    t.string "employer"
    t.string "position"
    t.float "avg_hours_worked_per_week"
    t.float "hourly_wage"
    t.float "salary"
    t.text "employer_benefits"
    t.boolean "not_employed_but_eligible"
    t.integer "how_many_jobs_in_last_six_months"
    t.float "total_family_income_from_all_sources"
    t.integer "child_support"
    t.text "other_sources_of_income"
    t.boolean "currently_file_taxes"
    t.boolean "receive_earned_income_tax_credit"
    t.integer "highest_education_attained"
    t.string "highest_education_attained_by_parent_or_caretaker"
    t.integer "marital_status"
    t.boolean "children_living_outside_home"
    t.string "children_outside_home_who"
    t.integer "parenting_class"
    t.string "parenting_class_which"
    t.integer "quality_childcare"
    t.boolean "children_currently_in_quality_care"
    t.text "children_in_quality_care_explain"
    t.boolean "have_health_care_in_some_form"
    t.string "have_health_care_in_some_form_explain"
    t.boolean "children_have_health_care_in_some_form"
    t.string "children_have_health_care_in_some_form_explain"
    t.boolean "currently_have_stable_housing"
    t.integer "rent_or_own"
    t.float "monthly_rent_or_mortgage_payment"
    t.boolean "receive_rent_rebate"
    t.boolean "currently_receive_public_housing_assistance"
    t.boolean "currently_receive_private_subsidized_housing_assistance"
    t.boolean "use_section_eight_voucher"
    t.boolean "currently_have_reliable_transportation"
    t.integer "reliable_transportation_method"
    t.string "reliable_transportation_method_other"
    t.boolean "possible_to_obtain_reliable_transportation_in_sixty_days"
    t.boolean "have_required_auto_insurance"
    t.boolean "have_valid_id_or_drivers_license"
    t.integer "no_valid_id_or_license_reason"
    t.text "revoked_or_suspended_license_explanation"
    t.boolean "ever_convicted_of_felony"
    t.boolean "ever_convicted_of_misdemeanor"
    t.boolean "current_pending_court_cases"
    t.boolean "any_legal_matters_needing_resolution"
    t.boolean "nwp_assets_family"
    t.boolean "nwp_assets_lives_in_neighborhood"
    t.boolean "nwp_assets_accountability"
    t.boolean "nwp_assets_parenting_training"
    t.boolean "nwp_assets_ged_highschool_college"
    t.boolean "nwp_assets_transportation"
    t.boolean "nwp_assets_stable_housing"
    t.boolean "nwp_assets_quality_childcare"
    t.boolean "nwp_assets_earned_income_tax_credit"
    t.boolean "nwp_assets_resolved_criminal_background_na"
    t.boolean "nwp_assets_monthly_budget_management"
    t.boolean "nwp_assets_health_care_insurance"
    t.boolean "nwp_currently_eligible"
    t.float "square_footage_of_house"
    t.text "notes"
    t.string "code"
    t.string "last_grade_completed"
    t.string "technical_training_degree"
    t.string "associates_degree_type"
    t.string "bachelors_degree_type"
    t.string "masters_degree_type"
    t.integer "user_id"
    t.string "suffix"
    t.integer "ACE_sexually_abused"
    t.integer "ACE_unloved"
    t.integer "ACE_uncared_for"
    t.integer "ACE_broken_home"
    t.integer "ACE_mother_pushed_shoved_grabbed_slapped"
    t.integer "ACE_lived_with_addict"
    t.integer "ACE_household_member_mentally_ill"
    t.integer "ACE_household_member_went_to_prison"
    t.index ["cohort_id"], name: "index_individuals_on_cohort_id"
    t.index ["organization_id"], name: "index_individuals_on_organization_id"
    t.index ["user_id"], name: "index_individuals_on_user_id"
  end

  create_table "individuals_meetings", id: false, force: :cascade do |t|
    t.integer "meeting_id", null: false
    t.integer "individual_id", null: false
  end

  create_table "meetings", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "topic"
    t.date "meeting_date"
    t.integer "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_meetings_on_cohort_id"
  end

  create_table "next_steps", id: :serial, force: :cascade do |t|
    t.integer "goal_id"
    t.string "next_step"
    t.string "responsible_party"
    t.date "due_date"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_next_steps_on_goal_id"
  end

  create_table "notes", id: :serial, force: :cascade do |t|
    t.integer "individual_id"
    t.integer "user_id"
    t.date "note_date"
    t.string "method_of_contact"
    t.string "contact_length"
    t.text "update_on_last_action"
    t.text "needs_addressed"
    t.text "other_notes"
    t.date "next_appointment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["individual_id"], name: "index_notes_on_individual_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "organizations", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone_number"
    t.string "website"
    t.string "primary_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "organization_id"
    t.string "first_name"
    t.string "last_name"
    t.boolean "social_worker", default: false
    t.boolean "super_user", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["organization_id"], name: "index_users_on_organization_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "version_associations", id: :serial, force: :cascade do |t|
    t.integer "version_id"
    t.string "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
    t.index ["version_id"], name: "index_version_associations_on_version_id"
  end

  create_table "versions", id: :serial, force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.integer "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
    t.index ["transaction_id"], name: "index_versions_on_transaction_id"
  end

  create_table "visits", id: :serial, force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.text "landing_page"
    t.integer "user_id"
    t.string "referring_domain"
    t.string "search_keyword"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.integer "screen_height"
    t.integer "screen_width"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "postal_code"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_visits_on_user_id"
    t.index ["visit_token"], name: "index_visits_on_visit_token", unique: true
  end

  add_foreign_key "assessments", "individuals"
  add_foreign_key "attendances", "individuals"
  add_foreign_key "attendances", "meetings"
  add_foreign_key "cohorts", "organizations"
  add_foreign_key "goals", "individuals"
  add_foreign_key "household_members", "individuals"
  add_foreign_key "individuals", "cohorts"
  add_foreign_key "individuals", "organizations"
  add_foreign_key "individuals", "users"
  add_foreign_key "meetings", "cohorts"
  add_foreign_key "next_steps", "goals"
  add_foreign_key "notes", "individuals"
  add_foreign_key "notes", "users"
  add_foreign_key "users", "organizations"
end
