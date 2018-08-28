class AddMissingIdexes1 < ActiveRecord::Migration[5.2]
  def change
    change_column_null :cities, :country_id, true

    create_table :states do |t|
      t.belongs_to :country, null: false
      t.string :name, null: false
      t.string :acronym
    end

    add_index :states, [:country_id, :name], unique: true
    add_index :states, [:country_id, :acronym], unique: true
    add_index :states, :name
    add_index :states, :acronym
    add_foreign_key :states, :countries

    add_column :cities, :state_id, :integer, null: false
    add_foreign_key :cities, :states
  end
end
