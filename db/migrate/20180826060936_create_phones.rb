class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :phone, null: false

      t.timestamps
    end

    add_index :phones, :phone, unique: true

    create_join_table :phones, :profiles
  end
end
