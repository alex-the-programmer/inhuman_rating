class Stigma < ApplicationRecord
  validates_presence_of :stigma_type, :name

  has_many :profiles_stigmas
  has_many :profiles, through: :profiles_stigmas
end
