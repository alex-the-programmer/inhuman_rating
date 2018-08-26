class CreateStigmas < ActiveRecord::Migration[5.2]
  def change
    create_table :stigmas do |t|
      t.string :stigma_type, null: false
      t.string :icon_url
      t.string :name, null: false

      t.timestamps
    end

    add_index :stigmas, [:stigma_type, :name], unique: true

    create_join_table :stigmas, :profiles do |t|
      t.integer :up_votes, default: 0, null: false
      t.integer :down_votes, default: 0, null: false
      t.timestamps
    end
  end
end
