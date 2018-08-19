class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.date :date_of_birth
      t.string :avatar_url

      t.timestamps
    end
  end
end
