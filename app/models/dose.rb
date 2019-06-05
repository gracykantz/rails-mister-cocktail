class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient, dependent: :destroy
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  validates :ingredient, presence: true
end
