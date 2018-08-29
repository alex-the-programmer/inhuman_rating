class Neighbourhood < ApplicationRecord
  validates_presence_of :name

  belongs_to :city

  has_many :neighbourhoods_profiles
  has_many :profiles, through: :neighbourhoods_profiles

  has_many :neighbourhoods_social_profiles
  has_many :social_profiles, through: :cities_social_profiles
end
