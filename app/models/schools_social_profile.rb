class SchoolsSocialProfile < ApplicationRecord
  belongs_to :school
  belongs_to :social_profile
end