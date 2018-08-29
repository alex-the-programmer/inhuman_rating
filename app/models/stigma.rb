class Stigma < ApplicationRecord
  validates_presence_of :sstigma_type, :name

  has_many :profile_stigmas
  has_many :profiles, through: :profile_stigmas
end
