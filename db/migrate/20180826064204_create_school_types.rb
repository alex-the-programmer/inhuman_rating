class CreateSchoolTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :school_types do |t|
      t.string :name, null: true

      t.timestamps
    end

    add_index :school_types, :name, unique: true
  end
end
