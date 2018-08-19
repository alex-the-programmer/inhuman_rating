class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :countries, :name, uniq: true
  end
end
