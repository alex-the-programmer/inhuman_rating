class Answer < ApplicationRecord
  belongs_to :review
  belongs_to :question
  belongs_to :question_option
end