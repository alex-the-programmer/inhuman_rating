class QuestionOption < ApplicationRecord
  validates_presence_of :option

  belongs_to :question
end
