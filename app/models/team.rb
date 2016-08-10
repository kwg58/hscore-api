class Team < ApplicationRecord
  has_many :players
  has_many :games, :foreign_key => 'hometeam_id', :foreign_key => 'awayteam_id'
attr_accessor :id, :fullname, :shortname
  # accepts_nested_attributes_for :players, :games
end
