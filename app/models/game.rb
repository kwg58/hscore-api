class Game < ApplicationRecord
  has_many :teams
  has_many :goals
  has_many :assists, through: :goals
  has_many :penalties
  has_many :goalies
  # accepts_nested_attributes_for :teams, :goals, :assists, :pentalties, :goalies
end
