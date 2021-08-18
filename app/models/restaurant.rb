class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"] 

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true

  # YOU CAN USE EITHER
  # validates :category, presence: true, inclusion: {in: %w(chinese italian japanese french belgian)}  
  validates :category, presence: true, inclusion: {in: CATEGORIES}  
end
