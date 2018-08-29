class Profile < ApplicationRecord
  has_many :profile_social_profiles
  has_many :social_profiles, through: :profiles_solial_profiles

  has_many :citiy_profiles
  has_many :cities, through: :cities_profiles

  has_many :neighbourhood_profiles
  has_many :neighbourhoods, through: :neighbourhoods_profiles

  has_many :profile_stigmas
  has_many :stigmas, through: :profile_stigmas

  has_many :phone_profiles
  has_many :phones, through: :phones_profiles

  has_many :email_profiles
  has_many :emails, through: :email_profiles

  has_many :company_profiles
  has_many :companies, through: :companies_profiles

  has_many :profile_schools
  has_many :schools, through: :profiles_schools

  has_many :profile_school_departments
  has_many :school_departments, through: :profiles_school_departments

  has_many :reviews
end
