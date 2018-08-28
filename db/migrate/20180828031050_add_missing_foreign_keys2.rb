class AddMissingForeignKeys2 < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :schools_social_profiles, :social_profiles
    add_foreign_key :profiles_schools, :profiles
  end
end
