json.extract! player, :id, :firstname, :lastname, :fullname, :team_id, :jerseynumber, :created_at, :updated_at
json.url player_url(player, format: :json)
