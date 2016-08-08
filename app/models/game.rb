class Game < ApplicationRecord
  has_many :teams
  has_many :goals
  has_many :assists, through: :goals
  has_many :penalties
  has_many :goalies
  # accepts_nested_attributes_for :teams, :goals, :assists, :pentalties, :goalies

  def hometeam( hometeam_id )
    return Team.find(self.hometeam_id)
  end

  def awayteam( hometeam_id )
    return Team.find(self.awayteam_id)
  end

  def getteam( teamID )
    return Team.find(teamID)
  end

end
