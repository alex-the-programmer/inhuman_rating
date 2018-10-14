class SocialProfile < ApplicationRecord
  validates_presence_of :social_profile_type, :profile_url

  has_many :profiles_solial_profiles
  has_many :profiles, through: :profiles_social_profiles

  has_many :cities_social_profiles
  has_many :cities, through: :cities_social_profiles

  has_many :neighbourhoods_social_profiles
  has_many :neighbourhoods, through: :neighbourhoods_social_profiles

  has_many :companies_social_profiles
  has_many :companies, through: :companies_social_profiles

  has_many :schools_social_profiles
  has_many :schools, through: :schools_social_profiles

  has_many :school_departments_social_profiles
  has_many :school_departments, through: :school_departments_social_profiles
end
