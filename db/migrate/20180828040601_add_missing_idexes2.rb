class AddMissingIdexes2 < ActiveRecord::Migration[5.2]
  def change
    change_column_null :cities, :country_id, false
    change_column_null :cities, :state_id, true
    remove_index :index_cities_on_name_and_country_id
    add_index :cities, [:country_id, :state_id, :name], unique: true
    add_index :cities, :state_id

    add_index :cities_profiles, [:city_id, :profile_id], unique: true
    add_index :cities_social_profiles, [:city_id, :social_profile_id], unique: true
    add_index :companies_profiles, [:company_id, :profile_id], unique: true
    add_index :companies_social_profiles, [:company_id, :social_profile_id], unique: true
    add_index :emails_profiles, [:email_id, :profile_id], unique: true

    change_column_null :neighbourhoods, :city_id, false

    add_index :neighbourhoods_profiles, [:neighbourhood_id, :profile_id], unique: true
    add_index :neighbourhoods_social_profiles, [:neighbourhood_id, :social_profile_id], unique: true
    add_index :phones_profiles, [:phone_id, :profile_id], unique: true

    add_index :profiles, :first_name, :age
    add_index :profiles, [:last_name, :middle_name, :first_name, :age]
    add_index :profiles, [:last_name, :first_name, :age]

    add_index :profiles_school_departments, [:profile_id, :school_department_id], unique: true
    add_index :profiles_schools, [:profile_id, :school_id], unique: true
    add_index :profiles_social_profiles, [:profile_id, :social_profile_id], unique: true
    add_index :profiles_stigmas, [:profile_id, :stigma_id], unique: true

    add_index :question_options, [:question_id, :order]
    add_index :questions, [:review_type_id, :question_type_id, :order]

    add_index :questions_reviews, [:question_id, :review_id], unique: true
    add_index :school_departments_social_profiles, [:school_department_id, :social_profile_id], unique: true

    change_column_null :school_types, :name, false

    add_index :schools, :name
    add_index :schools_social_profiles, [:school_id, :social_profile_id], unique: true

    change_column_null :social_profiles, :social_profile_type, false

    add_index :social_profiles, :first_name
    add_index :social_profiles, [:last_name, :first_name]
  end
end
