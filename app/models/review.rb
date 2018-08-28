class Review < ApplicationRecord
  belongs_to :review_type
  belongs_to :profile

  has_many :review_questions
  has_many :questions, through: :review_questions
end
