class Email < ApplicationRecord
  validates_presence_of :email

  has_many :emails_profiles
  has_many :profiles, through: :emails_profiles
end
