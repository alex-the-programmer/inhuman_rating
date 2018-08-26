class SchoolDepartment < ApplicationRecord
  validates_presence_of :name

  belongs_to :school

  has_many :profiles_school_departments
  has_many :profiles, through: :profiles_school_departments

  has_many :school_departments_social_profiles
  has_many :social_profiles, through: :school_departments_social_profiles
end
