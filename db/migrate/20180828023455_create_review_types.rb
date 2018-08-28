class CreateReviewTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :review_types do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :review_types, :name, unique: true
  end
end
