json.extract! goalie, :id, :game_id, :player_id, :time_played, :goals_against, :win, :loss, :created_at, :updated_at
json.url goalie_url(goalie, format: :json)
