class SocialProfile < ApplicationRecord
  has_many :profiles_solial_profiles
  has_many :profiles, through: :profiles_social_profiles

  validates_presence_of :social_profile_type, :profile_url
end
