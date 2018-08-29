class CitiesSocialProfile < ApplicationRecord
  belongs_to :city
  belongs_to :social_profile
end