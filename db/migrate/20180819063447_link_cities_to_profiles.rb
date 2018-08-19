class LinkCitiesToProfiles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cities, :profiles
    create_join_table :cities, :social_profiles
    create_join_table :neighbourhoods, :profiles
    create_join_table :neighbourhoods, :social_profiles

    add_foreign_key :cities_profiles, :cities
    add_foreign_key :cities_profiles, :profiles

    add_foreign_key :cities_social_profiles, :cities
    add_foreign_key :cities_social_profiles, :social_profiles

    add_foreign_key :neighbourhoods_profiles, :neighbourhoods
    add_foreign_key :neighbourhoods_profiles, :profiles

    add_foreign_key :neighbourhoods_social_profiles, :neighbourhoods
    add_foreign_key :neighbourhoods_social_profiles, :social_profiles
  end
end
