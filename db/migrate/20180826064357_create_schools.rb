class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.belongs_to :school_type, null: false
      t.string :avatar_url

      t.timestamps
    end

    add_index :schools, [:school_type_id, :name], unique: true

    create_join_table :schools, :profiles
    create_join_table :schools, :social_profiles

    add_foreign_key :profiles_schools, :schools
    add_foreign_key :schools_social_profiles, :schools
    add_foreign_key :schools, :school_types
  end
end
