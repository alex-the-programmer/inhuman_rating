class ReviewType < ApplicationRecord
  validates_presence_of :name

  has_many :reviews
  has_many :questions
end
