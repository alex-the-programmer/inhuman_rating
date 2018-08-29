class State < ApplicationRecord
  validates_presence_of :name

  belongs_to :country
end