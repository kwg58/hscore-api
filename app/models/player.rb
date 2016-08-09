class Player < ApplicationRecord
  belongs_to :team


  def homeSelect
    [
      ['3 - Magnuson, Keith','234'],
      ['21 - Stan Makita', '342']
    ]
  end

end
# [
#     ['First Option','first_option'],
#     ['Second Option','second_option']
#   ]

  # Player.where(team == self.team_id).find_each do |person|
    # x = "['" + person.jerseynumber + " - " + person.fullname + ", '" + person.id + "']"
