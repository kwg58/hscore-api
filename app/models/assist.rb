class Assist < ApplicationRecord
  belongs_to :goal
  validates :goal, presence: true
  attr_accessor :id, :player_id
end
