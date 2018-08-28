class Review < ApplicationRecord
  belongs_to :review_type
  belongs_to :profile
end
