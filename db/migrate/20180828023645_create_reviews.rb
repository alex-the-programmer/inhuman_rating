class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :review_type, null: false
      t.belongs_to :profile, null: false
      t.string :text

      t.timestamps
    end

    add_foreign_key :reviews, :review_types
    add_foreign_key :reviews, :profiles
  end
end
