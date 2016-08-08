json.extract! game, :id, :date, :time, :location, :status :periodlength :official1, :official2, :official3, :hometeam_id, :awayteam_id, :homescore1, :homescore2, :homescore3, :homescoreOT, :homescorefinal, :awayscore1, :awayscore2, :awayscore3, :awayscoreOT, :awayscorefinal, :winner_id, :loser_id, :tie, :created_at, :updated_at
json.url game_url(game, format: :json)
