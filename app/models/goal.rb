class Goal < ApplicationRecord
  belongs_to :game
  validates :game, presence: true
  has_one :players
  has_many :assists
end
