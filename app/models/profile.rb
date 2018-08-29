class Profile < ApplicationRecord
  has_many :profiles_social_profiles
  has_many :social_profiles, through: :profiles_solial_profiles

  has_many :cities_profiles
  has_many :cities, through: :cities_profiles

  has_many :neighbourhoods_profiles
  has_many :neighbourhoods, through: :neighbourhoods_profiles

  has_many :profile_stigmas
  has_many :stigmas, through: :profile_stigmas

  has_many :phones_profiles
  has_many :phones, through: :phones_profiles

  has_many :emails_profiles
  has_many :emails, through: :emails_profiles

  has_many :companies_profiles
  has_many :companies, through: :companies_profiles

  has_many :profiles_schools
  has_many :schools, through: :profiles_schools

  has_many :profiles_school_departments
  has_many :school_departments, through: :profiles_school_departments

  has_many :reviews
end
