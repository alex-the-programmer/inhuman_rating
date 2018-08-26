class Stigma < ApplicationRecord
  validates_presence_of :sstigma_type, :name

  has_many :profile_stigmata
  has_many :profiles, through: :profile_stigmata
end
