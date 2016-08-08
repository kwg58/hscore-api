class Team < ApplicationRecord
  has_many :players
  has_many :games, :foreign_key => 'hometeam_id', :foreign_key => 'awayteam_id'
  # accepts_nested_attributes_for :players, :games
end
