class RenameReviewQuestionsToAnswers < ActiveRecord::Migration[5.2]
  def change
    rename_table :questions_reviews, :answers
    add_column :answers, :answer_text, :string
    add_column :answers, :question_option_id, :integer
    add_foreign_key :answers, :question_options
    add_timestamps :answers, null: false
    add_column :answers, :id, :primary_key
  end
end
