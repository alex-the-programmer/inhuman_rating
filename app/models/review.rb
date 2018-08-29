class Review < ApplicationRecord
  belongs_to :review_type
  belongs_to :profile

  has_many :answers
  has_many :questions, through: :answers
end
