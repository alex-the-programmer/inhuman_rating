class Profile < ApplicationRecord
  has_many :profiles_social_profiles
  has_many :social_profiles, through: :profiles_solial_profiles

  has_many :cities_profiles
  has_many :cities, through: :cities_profiles

  has_many :neighbourhoods_profiles
  has_many :neighbourhoods, through: :neighbourhoods_profiles

  has_many :profile_stigmata
  has_many :stigmata, through: :profile_stigmata

  as_many :phones_profiles
  has_many :phones, through: :phones_profiles

  has_many :email_profiles
  has_many :emails, through: :email_profiles

  has_many :companies_profiles
  has_many :companies, through: :companies_profiles
end
