class CreateSocialProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :social_profiles do |t|
      t.string :social_profile_type
      t.string :profile_url
      t.string :avatar_url
      t.string :first_name
      t.string :last_name
      t.string :user_name

      t.timestamps
    end

    create_join_table :profiles, :social_profiles

    add_foreign_key :profiles_social_profiles, :profiles
    add_foreign_key :profiles_social_profiles, :social_profiles
  end
end
