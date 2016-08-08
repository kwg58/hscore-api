# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# load "#{Rails.root}/db/seeds/seed_penalties_and_teams.rb

Infraction.create!([
  { infraction: 'Bench penalty'},
  { infraction: 'Boarding'},
  { infraction: 'Butt-ending'},
  { infraction: 'Charging'},
  { infraction: 'Check to the Head'},
  { infraction: 'Checking from behind'},
  { infraction: 'Clipping'},
  { infraction: 'Closing hand on puck'},
  { infraction: 'Cross-checking'},
  { infraction: 'GK crossing the red line'},
  { infraction: 'Delay of game'},
  { infraction: 'Diving'},
  { infraction: 'Elbowing'},
  { infraction: 'Fighting'},
  { infraction: 'Head-butting'},
  { infraction: 'High-sticking'},
  { infraction: 'Holding'},
  { infraction: 'Hooking'},
  { infraction: 'Illegal equipment'},
  { infraction: 'Illegal stick'},
  { infraction: 'Instigator'},
  { infraction: 'Interference'},
  { infraction: 'Kneeing'},
  { infraction: 'Leaving penalty bench too early'},
  { infraction: 'GK leaving the crease'},
  { infraction: 'Roughing'},
  { infraction: 'Slashing'},
  { infraction: 'Spearing'},
  { infraction: 'GK throwing puck'},
  { infraction: 'Throwing stick'},
  { infraction: 'Too many men on the ice'},
  { infraction: 'Tripping'},
  { infraction: 'Unsportsmanlike conduct'}
]);

  Team.create! ([
  { fullname: 'Chicago Blackhawks', shortname: 'Hawks'},
  { fullname: 'Detroit Red Wings', shortname: 'Wings'},
  { fullname: 'Boston Bruins', shortname: 'Bruins'},
  { fullname: 'New York Rangers', shortname: 'Rangers'},
  { fullname: 'Montreal Canadiens', shortname: 'Habs'},
  { fullname: 'Toronto Maple Leafs', shortname: 'Leafs'}
]);

require 'csv'

Player.delete_all

CSV.foreach('db/players.csv', headers: true) do |row|
  Player.create(
    {
      team_id: row['Team'],
      firstname: row['FirstName'],
      lastname: row['LastName'],
      fullname: row['FullName'],
      jerseynumber: row['Num']
    }
  )
end
