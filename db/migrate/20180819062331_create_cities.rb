class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.belongs_to :country
      t.string :name, null: false

      t.timestamps
    end

    add_index :cities, :name
    add_index :cities, [:name, :country_id], unique: true

    add_foreign_key :cities, :countries
  end
end
