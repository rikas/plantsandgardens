class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, :garden, presence: true
end
