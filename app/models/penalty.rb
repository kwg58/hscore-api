class Penalty < ApplicationRecord
  belongs_to :games
  attr_accessor :id, :game_id, :player_id, :infraction
end
