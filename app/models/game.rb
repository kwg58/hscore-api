class Game < ApplicationRecord
  has_many :teams
  has_many :goals
  has_many :assists, through: :goals
  has_many :penalties
  has_many :goalies
  # accepts_nested_attributes_for :teams, :goals, :assists, :pentalties, :goalies

    # default_scope order('id DESC')

  def homefull()
    if self.hometeam_id.blank?
      return nil
    else
      homef = Team.find(self.hometeam_id)
      return homef.fullname
    end
  end

  def homeshort()
    if self.hometeam_id.blank?
      return nil
    else
      homes = Team.find(self.hometeam_id)
      return homes.shortname
    end
  end

  def awayfull()
    if self.awayteam_id.blank?
      return nil
    else
      awayf = Team.find(self.awayteam_id)
      return awayf.fullname
    end
  end

  def awayshort()
    if self.awayteam_id.blank?
      return nil
    else
      aways = Team.find(self.awayteam_id)
      return aways.shortname
    end
  end

end
