class City < ApplicationRecord
  validates_presence_of :name

  has_many :neighbourhoods

  has_many :citiy_profiles
  has_many :profiles, through: :cities_profiles

  has_many :cities_social_profiles
  has_many :social_profiles, through: :cities_social_profiles

  belongs_to :country
  belongs_to :state
end
