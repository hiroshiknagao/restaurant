class Review < ApplicationRecord
  belongs_to :nice_restaurant
  validates :content, presence: true
end
