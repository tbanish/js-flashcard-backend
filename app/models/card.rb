class Card < ApplicationRecord
  belongs_to :deck
  validates :answer, :question, presence: true
end
