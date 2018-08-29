class Company < ApplicationRecord
  validates_presence_of :name

  has_many :company_profiles
  has_many :profiles, through: :companies_profiles

  has_many :companies_social_profiles
  has_many :social_profiles, through: :companies_social_profiles
end
