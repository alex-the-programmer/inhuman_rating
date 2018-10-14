class MakeQuestionOptionNullable < ActiveRecord::Migration[5.2]
  def change
    change_column_null :answers, :question_option_id, true
  end
end
