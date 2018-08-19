class CreateNeighbourhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighbourhoods do |t|
      t.belongs_to :city
      t.string :name, null: false

      t.timestamps
    end

    add_index :neighbourhoods, :name
    add_index :neighbourhoods, [:name, :city_id], unique: true

    add_foreign_key :neighbourhoods, :cities
  end
end
