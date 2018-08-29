class ProfilesSocialProfile < ApplicationRecord
  belongs_to :profile
  belongs_to :social_profile
end