class Assist < ApplicationRecord
  belongs_to :goal
  validates :goal, presence: true
end
