class Game < ApplicationRecord
  has_many :teams
  has_many :goals
  has_many :assists, through: :goals
  has_many :penalties
  has_many :goalies
end
