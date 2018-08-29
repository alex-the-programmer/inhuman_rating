class School < ApplicationRecord
  validates_presence_of :name

  belongs_to :sschool_type
  has_many :school_departments

  has_many :profile_schools
  has_many :profiles, through: :profiles_schools

  has_many :school_social_profiles
  has_many :social_profiles, through: :schools_social_profiles
end
