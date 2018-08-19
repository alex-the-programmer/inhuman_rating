class Profile < ApplicationRecord
  has_many :profiles_social_profiles
  has_many :social_profiles, through: :profiles_solial_profiles

  has_many :cities_profiles
  has_many :cities, through: :cities_profiles

  has_many :neighbourhoods_profiles
  has_many :neighbourhoods, through: :neighbourhoods_profiles
end
