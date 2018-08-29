class Phone < ApplicationRecord
  validates_presence_of :phone

  has_many :phones_profiles
  has_many :profiles, through: :phones_profiles
end
