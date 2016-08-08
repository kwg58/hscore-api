class Team < ApplicationRecord
  has_many :players
  has_many :games
  # accepts_nested_attributes_for :players, :games
end
