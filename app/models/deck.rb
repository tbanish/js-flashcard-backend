class Deck < ApplicationRecord
  has_many :cards, dependent: :destroy
  validates :subject, presence: true, uniqueness: true
end
