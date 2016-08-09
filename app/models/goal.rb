class Goal < ApplicationRecord
  belongs_to :game
  # validates :game, presence: true
  has_one :player
  has_one :team
  has_many :assists
end
