class Game < ApplicationRecord
  has_many :teams
  has_many :goals
  has_many :assists, through: :goals
  has_many :penalties
  has_many :goalies
  # accepts_nested_attributes_for :teams, :goals, :assists, :pentalties, :goalies

  def homefull()
    homef = Team.find(self.hometeam_id)
    return homef.fullname
  end

  def homeshort()
    homes = Team.find(self.hometeam_id)
    return homes.shortname
  end

  def awayfull()
    awayf = Team.find(self.awayteam_id)
    return awayf.fullname
  end

  def awayshort()
    aways = Team.find(self.awayteam_id)
    return aways.shortname
  end

end
