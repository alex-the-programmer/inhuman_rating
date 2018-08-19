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
  end
end
