class Question < ApplicationRecord
  validates_presence_of :question

  belongs_to :review_type

  has_many :answers
  has_many :reviews, through: :answers
end
