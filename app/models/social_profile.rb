class SocialProfile < ApplicationRecord
  has_many :profiles_solial_profiles
  has_many :profiles, through: :profiles_social_profiles

  has_many :cities_social_profiles
  has_many :cities, through: :cities_social_profiles

  has_many :neighbourhoods_social_profiles
  has_many :neighbourhoods, through: :cities_social_profiles

  has_many :companies_social_profiles
  has_many :companies, through: :companies_social_profiles

  has_many :schools_social_profiles
  has_many :schools, through: :schools_social_profiles

  validates_presence_of :social_profile_type, :profile_url
end
