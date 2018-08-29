class Email < ApplicationRecord
  validates_presence_of :email

  has_many :email_profiles
  has_many :profiles, through: :email_profiles
end
