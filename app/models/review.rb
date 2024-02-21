class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  # Rating must be from 0 - 5 (2.5 is invalid)
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
