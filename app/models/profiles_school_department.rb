class ProfilesSchoolDepartment < ApplicationRecord
  belongs_to :profile
  belongs_to :school_department
end