class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :avatar_url

      t.timestamps
    end

    add_index :companies, :name, unique: true

    create_join_table :companies, :profiles
    create_join_table :companies, :social_profiles
  end
end
