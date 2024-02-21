class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: :true
  # Category must be in CATEGORIES arr
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
