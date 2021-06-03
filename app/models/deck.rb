class Deck < ApplicationRecord
  has_many :cards, dependent: :destroy
  has_many :tests
  validates :subject, presence: true, uniqueness: true
end
