json.extract! team, :id, :fullname, :shortname, :contact, :contactemail, :contactphone, :created_at, :updated_at
json.url team_url(team, format: :json)