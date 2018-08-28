class Question < ApplicationRecord
  validates_presence_of :question

  belongs_to :review_type

  has_many :review_questions
  has_many :reviews, through: :review_questions
end
