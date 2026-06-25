class Category < ApplicationRecord
  has_many :expenses, dependent: :destroy

  # Keep category names usable in the expense form and prevent duplicates
  validates :name, presence: true, uniqueness: true
end
