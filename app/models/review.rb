class Review < ApplicationRecord
  belongs_to :cocktail
  validates :rating, presence: true
  validates :content, presence: true
end
