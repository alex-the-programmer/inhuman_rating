class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.belongs_to :review_type, null: false
      t.string :question, null: false
      t.string :question_type, null: false
      t.integer :order

      t.timestamps
    end

    create_table :question_options do |t|
      t.belongs_to :question, null: false
      t.string :option, null: false
      t.integer :order
    end

    create_join_table :reviews, :questions

    add_foreign_key :question_options, :questions
    add_foreign_key :questions, :review_types
    add_foreign_key :questions_reviews, :reviews
    add_foreign_key :questions_reviews, :questions
  end
end
