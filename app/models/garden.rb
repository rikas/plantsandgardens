class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  CATEGORIES = %w[park lake antique french]

  validates :category, :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
