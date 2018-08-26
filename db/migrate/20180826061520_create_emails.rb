class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :email, null: false

      t.timestamps
    end

    add_index :emails, :email, unique: true

    create_join_table :emails, :profiles
  end
end
