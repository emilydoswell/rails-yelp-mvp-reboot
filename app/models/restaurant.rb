class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true

  # YOU CAN USE EITHER OF THESE
  # validates :category, presence: true, inclusion: {in: %w(chinese italian japanese french belgian)}  
  validates :category, presence: true, inclusion: {in: CATEGORIES}  

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"] 
end
