class Profile < ApplicationRecord
  has_many :profiles_social_profiles
  has_many :social_profiles, through: :profiles_solial_profiles
end
