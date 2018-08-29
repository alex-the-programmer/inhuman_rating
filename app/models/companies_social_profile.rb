class CompaniesSocialProfile < ApplicationRecord
  belongs_to :company
  belongs_to :social_profile
end