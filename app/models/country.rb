class Country < ApplicationRecord
  has_many :cities
  has_many :states

  validates :name, presence: true, uniqueness: true
end
