class AddMissingForeignKeys1 < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :profiles_stigmas, :stigmas
    add_foreign_key :profiles_stigmas, :profiles

    add_foreign_key :phones_profiles, :phones
    add_foreign_key :phones_profiles, :profiles

    add_foreign_key :emails_profiles, :emails
    add_foreign_key :emails_profiles, :profiles

    add_foreign_key :companies_profiles, :companies
    add_foreign_key :companies_profiles, :profiles

    add_foreign_key :companies_social_profiles, :social_profiles
    add_foreign_key :companies_social_profiles, :companies
  end
end
