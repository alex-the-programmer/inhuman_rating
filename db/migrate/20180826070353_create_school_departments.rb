class CreateSchoolDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :school_departments do |t|
      t.string :name, null: false
      t.belongs_to :school, null: false
      t.string :avatar_url

      t.timestamps
    end

    add_index :school_departments, [:school_id, :name], unique: true

    create_join_table :school_departments, :profiles
    create_join_table :school_departments, :social_profiles

    add_foreign_key :profiles_school_departments, :profiles
    add_foreign_key :profiles_school_departments, :school_departments

    add_foreign_key :school_departments_social_profiles, :social_profiles
    add_foreign_key :school_departments_social_profiles, :school_departments
  end
end
